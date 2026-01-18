import 'package:hyapi/src/managers/manager.dart';
import 'package:process_run/process_run.dart';

class LauncherManager extends Manager {
  const LauncherManager({required super.client});

  Future<void> launchHytale() async {
    await client.patches.downloadAndApplyLatestPatch();
    final session = await client.sessions.create();
    final profile = client.launcherData.profiles.first;
    final name = profile.username;
    final uuid = profile.id;
    final identityToken = session.identityToken;
    final sessionToken = session.sessionToken;

    // todo:  macos will need some special handling
    final clientPath =
        "${client.launcherOptions.basePath}/instances/game/Client/HytaleClient";

    final command =
        "$clientPath --name $name --uuid $uuid --identity-token $identityToken --session-token $sessionToken";

    final shell = Shell();

    shell.run(command);
  }
}
