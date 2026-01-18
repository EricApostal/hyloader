import 'package:go_router/go_router.dart';
import 'package:hyloader/features/launcher/screens/home.dart';

final launcherNavigationBranch = StatefulShellBranch(
  routes: [
    GoRoute(
      path: "/launcher",
      builder: (context, state) {
        return LauncherScreen();
      },
    ),
  ],
);
