import 'package:auto_pulse/detail_login_screen.dart';
import 'package:auto_pulse/login_screen.dart';
import 'package:auto_pulse/modules/explore/routes.dart';
import 'package:auto_pulse/modules/home/routes.dart';
import 'package:auto_pulse/modules/me/routes.dart';
import 'package:auto_pulse/widgets/scaffold_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter routes = GoRouter(
    initialLocation: '/home',
    routes: <RouteBase>[
      GoRoute(
        path: '/login',
        builder: (BuildContext context, GoRouterState state) {
          return const LoginScreen();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'detailLogin',
            builder: (BuildContext context, GoRouterState state) {
              return const DetailLoginScreen();
            },
          ),
        ],
      ),
      StatefulShellRoute.indexedStack(
        builder: (
          BuildContext context,
          GoRouterState state,
          StatefulNavigationShell navigationShell,
        ) {
          return ScaffoldBottomNavigationBar(
            navigationShell: navigationShell,
          );
        },
        branches: <StatefulShellBranch>[
          StatefulShellBranch(routes: HomeRouter.routes),
          StatefulShellBranch(routes: ExploreRouter.routes),
          StatefulShellBranch(routes: MeRouter.routes),
        ],
      ),
    ],
  );
}
