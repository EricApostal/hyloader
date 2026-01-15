import 'package:dio/dio.dart';
import 'package:hyapi/authentication/oauth.dart';
import 'package:hyapi/src/managers/launcher.dart';
import 'package:hyapi/src/managers/patch.dart';
import 'package:oauth2/oauth2.dart';

class HytaleClient {
  final LauncherOptions launcherOptions;
  final Client oauthClient;

  const HytaleClient._({
    required this.launcherOptions,
    required this.oauthClient,
  });
  LauncherManager get launcher => LauncherManager(client: this);
  PatchManager get patches => PatchManager(client: this);

  static Future<HytaleClient> login({required LauncherOptions options}) async {
    final oauthClient = await runOAuthFlow();

    return HytaleClient._(launcherOptions: options, oauthClient: oauthClient);
  }
}

class LauncherOptions {
  /// The path to the root of the launcher
  final String basePath;
  const LauncherOptions({required this.basePath});
}
