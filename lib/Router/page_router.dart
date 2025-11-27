import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_web_portfolio/views/home_page.dart';
import 'package:flutter_web_portfolio/Router/routing_service.dart';
import 'package:flutter_web_portfolio/Router/page_router_name.dart';
import 'package:flutter_web_portfolio/views/splash/splash_page.dart';

class PageRouter {
  final GlobalKey<NavigatorState> shellNavigatorKey =
      GlobalKey<NavigatorState>();
  GoRouter goRouter = GoRouter(
    navigatorKey: RoutingService.navigatorKey,
    initialLocation: Routes.homeScreen.path,
    debugLogDiagnostics: true,
    errorBuilder:
        (BuildContext context, GoRouterState state) =>
            const Scaffold(body: Center(child: Text("Page Not Found"))),
    routes: <RouteBase>[
      GoRoute(
        path: Routes.splashScreen.path,
        name: Routes.splashScreen.name,
        builder: (BuildContext context, GoRouterState state) =>
            const SplashPage(),
      ),
      GoRoute(
        path: Routes.homeScreen.path,
        name: Routes.homeScreen.name,
        builder: (BuildContext context, GoRouterState state) =>
            const HomePage(),
      ),
    ],
  );
}
