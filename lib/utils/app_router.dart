import 'package:auto_pulse/detail_login_screen.dart';
import 'package:auto_pulse/detail_screen.dart';
import 'package:auto_pulse/login_screen.dart';
import 'package:auto_pulse/modules/home/home_add_vehicle_form_page.dart';
import 'package:auto_pulse/modules/home/home_vehicle_list_page.dart';
import 'package:auto_pulse/modules/home/home_my_vehicle_state_page.dart';
import 'package:auto_pulse/modules/home/home_page.dart';
import 'package:auto_pulse/widgets/shell_page.dart';
import 'package:auto_pulse/widgets/scaffold_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter routes = GoRouter(
    initialLocation: '/home/my-vehicle-state',
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
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: '/home',
                builder: (BuildContext context, GoRouterState state) {
                  return const HomePage();
                },
                routes: <RouteBase>[
                  GoRoute(
                    path: 'my-vehicle-list',
                    name: 'my-vehicles',
                    builder: (BuildContext context, GoRouterState state) {
                      return const HomeVehicleListPage();
                    },
                  ),
                  GoRoute(
                    path: 'my-vehicle-state',
                    name: 'my-vehicle-state',
                    builder: (BuildContext context, GoRouterState state) {
                      return const HomeMyVehicleStatePage();
                    },
                  ),
                  GoRoute(
                    path: 'my-vehicle-form',
                    name: 'add-my-vehicle-form',
                    builder: (BuildContext context, GoRouterState state) {
                      return const HomeAddVehicleFormPage();
                    },
                  ),
                ],
              ),
            ],
          ),
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
