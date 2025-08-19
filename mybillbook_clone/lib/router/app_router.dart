import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../screens/dashboard_screen.dart';
import '../screens/parties/parties_screen.dart';
import '../screens/items/items_screen.dart';
import '../screens/invoices/invoices_screen.dart';

final Provider<GoRouter> appRouterProvider = Provider((ref) {
  return GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        name: 'dashboard',
        builder: (BuildContext context, GoRouterState state) => const DashboardScreen(),
        routes: <RouteBase>[
          GoRoute(
            path: 'parties',
            name: 'parties',
            builder: (context, state) => const PartiesScreen(),
          ),
          GoRoute(
            path: 'items',
            name: 'items',
            builder: (context, state) => const ItemsScreen(),
          ),
          GoRoute(
            path: 'invoices',
            name: 'invoices',
            builder: (context, state) => const InvoicesScreen(),
          ),
        ],
      ),
    ],
  );
});

