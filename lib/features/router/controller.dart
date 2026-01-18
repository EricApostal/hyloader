import 'package:go_router/go_router.dart';
import 'package:hyloader/features/authentication/views/loading.dart';
import 'package:hyloader/features/router/branches/launcher.dart';

final routerController = GoRouter(
  initialLocation: "/login",
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => const PendingAuthScreen(),
    ),
    // sidebar handler
    ShellRoute(
      builder: (context, state, child) {
        return child;
      },
      routes: [
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return navigationShell;
          },
          branches: [launcherNavigationBranch],
        ),
      ],
    ),
  ],
);
