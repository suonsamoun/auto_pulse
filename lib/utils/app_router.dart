import 'package:auto_pulse/detail_login_screen.dart';
import 'package:auto_pulse/detail_screen.dart';
import 'package:auto_pulse/login_screen.dart';
import 'package:auto_pulse/modules/home/routes.dart';
import 'package:auto_pulse/widgets/shell_page.dart';
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
          StatefulShellBranch(
            routes: <RouteBase>[
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
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
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
            ],
          ),
        ],
      ),
    ],
  );
}
