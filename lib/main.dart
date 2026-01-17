import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hyapi/hyapi.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wharf_flutter/generated/frb_generated.dart';

void main() async {
  await RustLib.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: .dark,
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Center(
          child: FilledButton(
            onPressed: () async {
              final baseDocumentDirectory =
                  await getApplicationDocumentsDirectory();
              final basePath = "${baseDocumentDirectory.path}/hyloader";
              final client = await HytaleClient.login(
                options: LauncherOptions(basePath: basePath),
              );

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
