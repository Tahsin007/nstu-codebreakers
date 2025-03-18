import 'package:go_router/go_router.dart';
import 'package:task_hive/features/on_board/screens/onboard_screen_1.dart';
import 'package:task_hive/splash_screen.dart';

import '../../features/auth/presentation/screens/signin_screen.dart';
import 'error_page.dart';
import 'routes.dart';

class MyRouterConfig {
  static final router = GoRouter(
    errorBuilder: (context, state) {
      return const ErrorPage();
    },
    initialLocation: MyRoutes.initialRoute,
    routes: [
      GoRoute(
        path: MyRoutes.initialRoute,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: MyRoutes.onboard1,
        builder: (context, state) => const OnboardScreen1(),
      ),
    ],
  );
}
