import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'pages/pricing_page.dart';
import 'pages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}

final GoRouter _router = GoRouter(
  initialLocation: "/login",
  routes: <RouteBase>[
    GoRoute(
      name: "/home",
      path: "/home",
      builder: (context, state) {
        return const HomePage();
      },
    ),
    GoRoute(
      name: "/login",
      path: "/login",
      builder: (context, state) {
        return const LoginPage();
      },
    ),
    GoRoute(
      name: "/profile",
      path: "/profile",
      builder: (context, state) {
        return const ProfilePage();
      },
    ),
    GoRoute(
      name: "/pricing",
      path: "/pricing/:price",
      builder: (context, state) {
        final double amount = double.parse(
          state.pathParameters["price"]!,
        );
        return PricingPage(
          amount: amount,
        );
      },
    )
  ],
);
