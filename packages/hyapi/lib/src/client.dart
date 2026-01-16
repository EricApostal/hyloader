import 'package:dio/dio.dart';
import 'package:hyapi/authentication/oauth.dart';
import 'package:hyapi/src/managers/account.dart';
import 'package:hyapi/src/managers/launcher.dart';
import 'package:hyapi/src/managers/patch.dart';
import 'package:hyapi/src/managers/session.dart';
import 'package:hyapi/src/models/launcher/launcher.dart';
import 'package:oauth2/oauth2.dart';

class HytaleClient {
  final LauncherOptions launcherOptions;
  final Client oauthClient;
  final LauncherData launcherData;
  final Dio dio;

  const HytaleClient._({
    required this.launcherOptions,
    required this.oauthClient,
    required this.launcherData,
    required this.dio,
  });

  LauncherManager get launcher => LauncherManager(client: this);
  PatchManager get patches => PatchManager(client: this);
  SessionManager get sessions => SessionManager(client: this);
  AccountManager get accounts => AccountManager(client: this);

  static Future<HytaleClient> login({required LauncherOptions options}) async {
    final oauthClient = await runOAuthFlow();
    final dio = Dio(
      BaseOptions(
        headers: {
          "Authorization": "Bearer ${oauthClient.credentials.accessToken}",
        },
      ),
    );

    final client = HytaleClient._(
      launcherOptions: options,
      oauthClient: oauthClient,
      launcherData: ,
      dio: dio,
    );

    return client;
  }
}

class LauncherOptions {
  /// The path to the root of the launcher
  final String basePath;
  const LauncherOptions({required this.basePath});
}
