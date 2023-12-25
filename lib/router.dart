import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:journal_app/view/screens/index_screen.dart';
import 'package:journal_app/view/screens/login_screen.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const IndexPage(title: 'Home');
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'login',
          builder: (BuildContext context, GoRouterState state) {
            return const LoginPage(title: 'Login');
          },
        ),
      ],
    ),
  ],
);
