import 'package:comic_book/bloc/issues/issues_bloc.dart';
import 'package:comic_book/presentation/route/router.dart';
import 'package:comic_book/repository/comic_book_repository.dart';
import 'package:comic_book/utils/api_key.dart';
import 'package:comic_book/utils/request_interceptor.dart';
import 'package:comic_book/utils/response_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const ComicApp());
}

class ComicApp extends StatelessWidget {
  const ComicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
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
            final Dio dio = Dio(options)..interceptors.addAll([
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
