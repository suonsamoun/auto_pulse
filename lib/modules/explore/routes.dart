import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'explore.dart';

class ExploreRouter {
  static final List<RouteBase> routes = [
    GoRoute(
      path: '/explore',
      builder: (BuildContext context, GoRouterState state) {
        return const ShellPage(
          label: 'Explore',
          detailsPath: '/explore/details',
        );
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const DetailsScreen(label: 'B');
          },
        ),
      ],
    ),
  ];
}
