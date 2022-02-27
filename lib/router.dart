import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/page1.dart';
import 'package:gorouter/page2.dart';

final router = GoRouter(
  initialLocation: Page1.id,
  routes: [
    GoRoute(
      path: Page1.id,
      pageBuilder: (BuildContext context, GoRouterState? state) => MaterialPage(
        child: Page1(),
      ),
    ),
    GoRoute(
      path: Page2.id,
      pageBuilder: (BuildContext context, GoRouterState? state) => MaterialPage(
        child: Page2(),
      ),
    ),
  ],
);
