import 'package:comic_book/feature/comics/presentation/bloc/issues/issues_bloc.dart';
import 'package:comic_book/feature/comics/presentation/bloc/sort_issues/sort_issues_bloc.dart';
import 'package:comic_book/feature/view_style/domain/repository/preferences_repository.dart';
import 'package:comic_book/feature/view_style/presentation/bloc/view_style_bloc.dart';
import 'package:comic_book/feature/comics/domain/model/filter.dart';
import 'package:comic_book/route/router.dart';
import 'package:comic_book/feature/comics/domain/repository/comic_book_repository.dart';
import 'package:comic_book/shared/utils/api_key.dart';
import 'package:comic_book/shared/utils/request_interceptor.dart';
import 'package:comic_book/shared/utils/response_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_db_store/dio_cache_interceptor_db_store.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final preferences = await SharedPreferences.getInstance();
  final docsDir = await getApplicationDocumentsDirectory();

  runApp(ComicApp(preferences: preferences, pathDb: docsDir.path));
}

class ComicApp extends StatelessWidget {
  final SharedPreferences preferences;
  final String pathDb;

  const ComicApp({super.key, required this.preferences, required this.pathDb});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<SharedPreferences>.value(value: preferences),
        RepositoryProvider<ViewStyleRepository>(
            create: (_) => ViewStyleRepository(preferences)),
        RepositoryProvider<GoRouter>(
          create: (_) => createRouter(),
        ),
        RepositoryProvider<Dio>(
          create: (_) {
            final options = BaseOptions(
              baseUrl: 'https://comicvine.gamespot.com/api/',
              listFormat: ListFormat.csv,
              followRedirects: true,
              responseType: ResponseType.json,
              contentType: 'application/json; charset=utf-8',
            );
            final cacheOptions = CacheOptions(
              store: DbCacheStore(
                databasePath: pathDb,
                logStatements: kDebugMode,
              ),
              policy: CachePolicy.forceCache,
              hitCacheOnErrorExcept: [401, 403],
              maxStale: const Duration(days: 14),
              priority: CachePriority.high,
              cipher: null,
              keyBuilder: CacheOptions.defaultCacheKeyBuilder,
              allowPostMethod: false,
            );
            return Dio(options)
              ..interceptors.addAll([
                RequestInterceptor(apiKey),
                QueuedInterceptorsWrapper(
                  onRequest: (options, handler) {
                    final bool refresh = options.extra['refresh'] ?? false;
                    final RequestOptions newOptions = options.copyWith(
                      extra: {
                        ...options.extra,
                        if (refresh)
                        ...cacheOptions
                          .copyWith(policy: CachePolicy.refresh)
                          .toExtra()
                      }
                    );
                    handler.next(newOptions);
                  },
                ),
                DioCacheInterceptor(options: cacheOptions),
                ResponseWrapperInterceptor(),
              ]);
          },
        ),
        RepositoryProvider<ComicBookRepository>(
          create: (context) {
            return ComicBookRepository(context.read<Dio>());
          },
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<SortBloc>(create: (_) => SortBloc()),
          BlocProvider<IssuesBloc>(
            create: (context) {
              final sBloc = BlocProvider.of<SortBloc>(context, listen: false);
              final repository = RepositoryProvider.of<ComicBookRepository>(
                context,
                listen: false,
              );
              return IssuesBloc(
                repository: repository,
                initialFilter: sBloc.state,
              );
            },
          ),
          BlocProvider<ViewStyleBloc>(
            create: (context) {
              final repository = RepositoryProvider.of<ViewStyleRepository>(
                context,
                listen: false,
              );
              return ViewStyleBloc.fromPreferences(repository);
            },
          ),
        ],
        child: BlocListener<SortBloc, Filter>(
          listener: (context, state) {
            BlocProvider.of<IssuesBloc>(context, listen: false)
                .updateFilter(state);
          },
          child: Builder(
            builder: (context) {
              final router = RepositoryProvider.of<GoRouter>(
                context,
                listen: false,
              );
              return MaterialApp.router(routerConfig: router);
            },
          ),
        ),
      ),
    );
  }
}
