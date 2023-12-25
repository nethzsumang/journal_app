import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:journal_app/view/screens/entry_list_screen.dart';
import 'package:journal_app/view/screens/index_screen.dart';
import 'package:journal_app/view/screens/login_screen.dart';
import 'package:journal_app/view/screens/register_screen.dart';

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
        GoRoute(
          path: 'register',
          builder: (BuildContext context, GoRouterState state) {
            return const RegisterPage(title: 'Register');
          },
        ),
        GoRoute(
          path: 'dashboard',
          builder: (BuildContext context, GoRouterState state) {
            return const EntryListPage(title: 'Dashboard');
          },
        ),
      ],
    ),
  ],
);
