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

    // todo: obviously fix this, but macos will need some special handling
    final clientPath =
        "/home/eric/.var/app/com.hypixel.HytaleLauncher/data/Hytale/install/release/package/game/latest/Client/HytaleClient";

    final command =
        "$clientPath --name $name --uuid $uuid --identity-token $identityToken --session-token $sessionToken";
    print("command");
    print(command);
    final shell = Shell();

    shell.run(command);
  }
}
