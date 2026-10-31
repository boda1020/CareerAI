import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(AppRouterRef ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const Scaffold(
          body: Center(child: Text('CareerAI Splash/Initial Screen')),
        ),
      ),
      // Auth Routes
      GoRoute(
        path: '/login',
        builder: (context, state) => const Scaffold(
          body: Center(child: Text('Login Screen')),
        ),
      ),
      // Dashboard / ShellRoute will be added here later
    ],
    errorBuilder: (context, state) => const Scaffold(
      body: Center(child: Text('Page not found')),
    ),
  );
}

// Temporary placeholder provider for injection
final appRouterPrv = Provider<GoRouter>((ref) {
  // This is a placeholder since we are using generator above
  // but generator needs build_runner to run.
  // We'll use this for now to avoid compilation errors until build_runner is executed.
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const Scaffold(
          body: Center(child: Text('CareerAI Initialized')),
        ),
      ),
    ],
  );
});
