import 'dart:io';

import 'package:hyapi/src/managers/manager.dart';
import 'package:hyapi/src/models/instances/instance.dart';
import 'package:process_run/process_run.dart';

class LauncherManager extends Manager {
  const LauncherManager({required super.client});

  Future<void> launchInstance(HytaleInstance instance) async {
    await client.patches.downloadAndApplyLatestPatch(
      onPatchDownloadProgress: (count, total) {
        print('Patch Download: ${(count / total * 100).toStringAsFixed(0)}%');
      },
      onPatchProgress: (count, total) {
        print('Patching: ${(count / total * 100).toStringAsFixed(0)}%');
      },
    );
    final session = await client.sessions.create();
    final profile = client.launcherData.profiles.first;
    final name = profile.username;
    final uuid = profile.id;
    final identityToken = session.identityToken;
    final sessionToken = session.sessionToken;

    final instancePath =
        "${client.launcherOptions.basePath}/instances/${instance.id}";
    final dataPath = "$instancePath/gamedata";
    await Directory(dataPath).create(recursive: true);

    // todo: macos will need some special handling
    final clientPath = "$instancePath/game/Client/HytaleClient";

    // there's a --user-dir and --app-dir flag
    // I don't know what app dir does, but I really don't know what user dir means
    // my guess is that it's the UserData folder, but I would assume that would
    // just be the working directory
    final command =
        "$clientPath --name $name --uuid $uuid --identity-token $identityToken --session-token $sessionToken";

    final shell = Shell(workingDirectory: dataPath);

    shell.run(command);
  }
}
