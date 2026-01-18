import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:go_transitions/go_transitions.dart';
import 'package:hyloader/features/router/controller.dart';
import 'package:hyloader/features/storage/storage.dart';
import 'package:hyloader/theme/light.dart';
import 'package:hyloader/theme/dark.dart';
import 'package:hyloader/theme/text.dart';
import 'package:wharf_flutter/generated/frb_generated.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await RustLib.init();
  await StorageManager.init();
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerStatefulWidget {
  const MainApp({super.key});

  @override
  ConsumerState<MainApp> createState() => _MainAppState();
}

class _MainAppState extends ConsumerState<MainApp> {
  @override
  Widget build(BuildContext context) {
    final pageTransition = const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: GoTransitions.material,
        TargetPlatform.fuchsia: GoTransitions.none,
        TargetPlatform.iOS: GoTransitions.none,
        TargetPlatform.linux: GoTransitions.none,
        TargetPlatform.macOS: GoTransitions.none,
        TargetPlatform.windows: GoTransitions.none,
      },
    );

    return MaterialApp.router(
      routerConfig: routerController,
      themeMode: .dark,
      theme: ThemeData(
        colorScheme: lightColorScheme,
        textTheme: getBaseTextTheme(),
        pageTransitionsTheme: pageTransition,
      ),
      darkTheme: ThemeData(
        colorScheme: darkColorScheme,
        textTheme: getBaseTextTheme(),
        pageTransitionsTheme: pageTransition,
      ),
    );
  }
}
