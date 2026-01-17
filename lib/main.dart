import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:hyloader/features/authentication/repositories/client.dart';
import 'package:hyloader/features/storage/storage.dart';
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
    return MaterialApp(
      themeMode: .dark,
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Center(
          child: FilledButton(
            onPressed: () async {
              final client = await ref
                  .read(clientControllerProvider.notifier)
                  .tryRestoreSession();
              if (client == null) {
                await ref.read(clientControllerProvider.notifier).login();
              }
              // print(await client.patches.listPatchSteps(0));

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
