import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/screens/signin_screen.dart';
import 'error_page.dart';
import 'routes.dart';

class MyRouterConfig {
  static final router = GoRouter(
    errorBuilder: (context, state) {
      return const ErrorPage();
    },
    initialLocation: MyRoutes.signInRoute,
    routes: [
      GoRoute(
        path: MyRoutes.signInRoute,
        builder: (context, state) => const SignInScreen(),
      ),
    ],
  );
}
