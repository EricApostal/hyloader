import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:go_transitions/go_transitions.dart';
import 'package:hyapi/hyapi.dart';
import 'package:hyloader/features/authentication/repositories/client.dart';
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

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageTransition = const PageTransitionsTheme(
      builders: {
        // TargetPlatform.android: GoTransitions.material,
        TargetPlatform.fuchsia: GoTransitions.none,
        TargetPlatform.iOS: GoTransitions.none,
        TargetPlatform.linux: GoTransitions.none,
        TargetPlatform.macOS: GoTransitions.none,
        TargetPlatform.windows: GoTransitions.none,
      },
    );

    return MaterialApp(
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
      home: Scaffold(
        body: Center(
          child: FilledButton(
            onPressed: () async {
              HytaleClient? client = await ref
                  .read(clientControllerProvider.notifier)
                  .tryRestoreSession();
              if (client == null) {
                client = await ref
                    .read(clientControllerProvider.notifier)
                    .login();
              }
              print(await client.patches.listPatchSteps(0));

              // ignore: dead_code
              // if (doLaunch) {
              //   final profile = client.launcherData.profiles.first;
              //   final name = profile.username;
              //   final uuid = profile.id;
              //   final identityToken = session.identityToken;
              //   final sessionToken = session.sessionToken;

              //   final clientPath =
              //       "/home/eric/.var/app/com.hypixel.HytaleLauncher/data/Hytale/install/release/package/game/latest/Client/HytaleClient";

              //   final command =
              //       "$clientPath --name $name --uuid $uuid --identity-token $identityToken --session-token $sessionToken";
              //   print("command");
              //   print(command);
              //   final shell = Shell();

              //   shell.run(command);
              // }
            },
            child: Text("Start"),
          ),
        ),
      ),
    );
  }
}
