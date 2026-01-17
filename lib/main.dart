import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hyapi/hyapi.dart';
import 'package:path_provider/path_provider.dart';
import 'package:process_run/process_run.dart';
import 'package:wharf_flutter/generated/frb_generated.dart';
import 'package:wharf_flutter/wharf_flutter.dart';

void main() async {
  await RustLib.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // temp will be moved to hyapi
    final doLaunch = false;
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

              final patched = await client.patches.listPatchSteps();
              print("got patched = $patched");
              final launcherData = await client.accounts.fetchLauncherData();
              print("launcher data = ${launcherData}");
              final session = await client.sessions.create();
              print("got session = ${session}");

              final patchPath = "$basePath/downloads/patch.pwr";
              final sigPath = "$basePath/downloads/patch.pwr.sig";
              final step = patched.first;

              print("fetching binary...");
              // I'll need a way of figuring out what binary is which
              // the patches do work (as I understand) but I'm not convinced that hytale
              // actually uses them lol
              // await client.patches.downloadPatch(
              //   currentPatch: 0, // step.from,
              //   latestPatch: step.to,
              //   savePath: patchPath,
              // );

              // await client.patches.downloadSig(
              //   currentPatch: 0, // step.from,
              //   latestPatch: step.to,
              //   savePath: sigPath,
              // );

              print("fetched binary!");

              final patchFile = File(patchPath);
              final sigFile = File(sigPath);

              final newFile = await File("$basePath/game");
              //..create();

              final oldFile = await File("$basePath/placeholder");
              //..create();

              WharfService.patch(
                patchFile: patchFile,
                sigFile: sigFile,
                oldFile: oldFile,
                newFile: newFile,
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
