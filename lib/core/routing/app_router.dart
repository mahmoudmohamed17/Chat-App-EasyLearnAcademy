import 'package:chat_app/core/routing/routes.dart';
import 'package:chat_app/features/onboarding/views/onboarding_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

/// Application Router
class AppRouter {
  AppRouter._();

  static final GoRouter router = GoRouter(
    // initialLocation: _initialLocation(),
    routes: [
      _buildRoute(
        Routes.onboarding,
        (context, state) => const OnboardingScreen(),
      ),
      _buildRoute(Routes.login, (context, state) => const Placeholder()),
      _buildRoute(Routes.home, (context, state) => const Placeholder()),
    ],
  );

  // static String _initialLocation() {
  //   return '/';
  // }

  static GoRoute _buildRoute(
    String path,
    Widget Function(BuildContext context, GoRouterState state) builder,
  ) {
    return GoRoute(
      path: path,
      pageBuilder: (context, state) =>
          CupertinoPage(key: state.pageKey, child: builder(context, state)),
    );
  }
}
