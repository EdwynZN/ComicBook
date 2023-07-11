import 'package:comic_book/model/issue.dart';
import 'package:comic_book/presentation/screen/home_screen.dart';
import 'package:comic_book/presentation/screen/issue_details_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

GoRouter createRouter({
  String initial = '/',
  bool routerNeglect = true,
  bool debugLogDiagnostics = kDebugMode,
  List<NavigatorObserver>? observers,
}) {
  return GoRouter(
    debugLogDiagnostics: debugLogDiagnostics,
    errorBuilder: (_, __) => const Material(
      child: Center(
        child: Text(
          '404 | No Page found',
          style: TextStyle(
            fontSize: 26.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF666666),
          ),
        ),
      ),
    ),
    routerNeglect: routerNeglect,
    initialLocation: initial,
    observers: observers,
    routes: [
      GoRoute(
        name: 'Home',
        path: '/',
        builder: (_, state) => const HomeScreen(),
        routes: [
          GoRoute(
            name: 'issue_details',
            path: 'issue/:issueId',
            builder: (_, state) {
              final id = state.pathParameters['issueId'];
              final SimpleIssue? issue =
                  state.extra is SimpleIssue ? state.extra as SimpleIssue: null;
              return IssueDetailsScreen(
                url: 'https://comicvine.gamespot.com/api/issue/4000-$id/',
                initialTitle: issue?.completeName,
              );
            },
          ),
        ],
      ),
    ],
  );
}
