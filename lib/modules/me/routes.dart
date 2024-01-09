import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'me.dart';

class MeRouter {
  static final List<RouteBase> routes = [
    GoRoute(
      path: '/me',
      builder: (BuildContext context, GoRouterState state) {
        return const ShellPage(
          label: 'Me',
          detailsPath: '/me/details',
        );
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const DetailsScreen(label: 'C');
          },
        ),
      ],
    ),
  ];
}
