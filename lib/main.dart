import 'package:flutter/material.dart';
import 'package:hyapi/hyapi.dart';
import 'package:path_provider/path_provider.dart';
import 'package:process_run/process_run.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: FilledButton(
            onPressed: () async {
              final baseDocumentDirectory =
                  await getApplicationDocumentsDirectory();
              final client = await HytaleClient.login(
                options: LauncherOptions(
                  basePath: "${baseDocumentDirectory.path}/hyloader",
                ),
              );

              final patched = await client.patches.listPatchSteps();
              print("got patched = $patched");
              final launcherData = await client.accounts.fetchLauncherData();
              print("launcher data = ${launcherData}");
              final session = await client.sessions.create();
              print("got session = ${session}");

              final profile = client.launcherData.profiles.first;
              final name = profile.username;
              final uuid = profile.id;
              final identityToken = session.identityToken;
              final sessionToken = session.sessionToken;

              final clientPath =
                  "/home/eric/.var/app/com.hypixel.HytaleLauncher/data/Hytale/install/release/package/game/latest/Client/HytaleClient";

              final command =
                  "$clientPath --name $name --uuid $uuid --identity-token $identityToken --session-token $sessionToken";
              print("command");
              print(command);
              final shell = Shell();

              shell.run(command);
            },
            child: Text("Yo"),
          ),
        ),
      ),
    );
  }
}
