import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/page1.dart';
import 'package:gorouter/page2.dart';
import 'package:gorouter/page3.dart';

final router = GoRouter(
  initialLocation: Page1.path,
  routes: [
    GoRoute(
      path: Page1.path,
      pageBuilder: (BuildContext context, GoRouterState? state) => MaterialPage(
        child: Page1(),
      ),
    ),
    GoRoute(
      path: Page2.path,
      pageBuilder: (BuildContext context, GoRouterState? state) => MaterialPage(
        child: Page2(),
      ),
    ),
    GoRoute(
      path: Page3.path,
      builder: (BuildContext context, GoRouterState state) {
        final mode = state.params['mode']!;
        final id = state.params['id'];
        return Page3(mode, id: id);
      },
    ),
    GoRoute(
      path: Page3.pathWithoutId,
      builder: (BuildContext context, GoRouterState state) {
        final mode = state.params['mode']!;
        return Page3(mode);
      },
    ),
  ],
);
