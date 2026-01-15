import 'package:hyapi/src/managers/launcher.dart';

class HytaleClient {
  final LauncherOptions launcherOptions;

  const HytaleClient({required this.launcherOptions});
  LauncherManager get launcher => LauncherManager(client: this);
}

class LauncherOptions {
  /// The path to the root of the launcher
  final String basePath;
  const LauncherOptions({required this.basePath});
}
