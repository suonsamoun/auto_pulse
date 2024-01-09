import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'home.dart';

class HomeRouter {
  static final List<RouteBase> routes = [
    GoRoute(
      path: '/home',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
      routes: [
        GoRoute(
          path: 'choose-vehicle-type',
          name: 'choose-vehicle-type',
          builder: (BuildContext context, GoRouterState state) {
            return const HomeChooseVehicleTypePage();
          },
          routes: [
            GoRoute(
              path: 'add-my-vehicle-form',
              name: 'add-my-vehicle-form',
              builder: (BuildContext context, GoRouterState state) {
                return const HomeAddVehicleFormPage();
              },
            ),
          ],
        ),
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
      ],
    ),
  ];
}
