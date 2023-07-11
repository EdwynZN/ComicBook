import 'package:comic_book/bloc/issues/issues_bloc.dart';
import 'package:comic_book/bloc/view_style/view_style_bloc.dart';
import 'package:comic_book/presentation/route/router.dart';
import 'package:comic_book/repository/comic_book_repository.dart';
import 'package:comic_book/repository/preferences_repository.dart';
import 'package:comic_book/utils/api_key.dart';
import 'package:comic_book/utils/request_interceptor.dart';
import 'package:comic_book/utils/response_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final preferences = await SharedPreferences.getInstance();

  runApp(ComicApp(preferences: preferences));
}

class ComicApp extends StatelessWidget {
  final SharedPreferences preferences;
  const ComicApp({super.key, required this.preferences});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<SharedPreferences>.value(value: preferences),
        RepositoryProvider<Preferences>(
            create: (_) => Preferences(preferences)),
        RepositoryProvider<GoRouter>(
          create: (_) => createRouter(),
        ),
        RepositoryProvider<ComicBookRepository>(
          create: (_) {
            final options = BaseOptions(
              baseUrl: 'https://comicvine.gamespot.com/api/',
              listFormat: ListFormat.csv,
              followRedirects: true,
              responseType: ResponseType.json,
              contentType: 'application/json; charset=utf-8',
            );
            final Dio dio = Dio(options)
              ..interceptors.addAll([
                const ResponseWrapperInterceptor(),
                RequestInterceptor(apiKey),
              ]);
            return ComicBookRepository(dio);
          },
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<IssuesBloc>(
            create: (context) {
              final repository = RepositoryProvider.of<ComicBookRepository>(
                context,
                listen: false,
              );
              return IssuesBloc(repository: repository);
            },
          ),
          BlocProvider<ViewStyleBloc>(
            create: (context) {
              final repository = RepositoryProvider.of<Preferences>(
                context,
                listen: false,
              );
              return ViewStyleBloc.fromPreferences(repository);
            },
          ),
        ],
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
    );
  }
}
