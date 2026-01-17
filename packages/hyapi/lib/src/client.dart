import 'package:dio/dio.dart';
import 'package:hyapi/authentication/oauth.dart';
import 'package:hyapi/src/managers/account.dart';
import 'package:hyapi/src/managers/launcher.dart';
import 'package:hyapi/src/managers/patch.dart';
import 'package:hyapi/src/managers/session.dart';
import 'package:hyapi/src/models/authentication/client.dart';
import 'package:hyapi/src/models/launcher/launcher.dart';

class HytaleClient {
  final LauncherOptions launcherOptions;
  late final ClientUser clientUser;
  final Dio dio;
  late final LauncherData launcherData;

  HytaleClient._({required this.launcherOptions, required this.dio});

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

    final client = HytaleClient._(launcherOptions: options, dio: dio);

    final data = await client.accounts.fetchLauncherData();
    final user = ClientUser(
      ownerId: data.owner,
      credentials: oauthClient.credentials,
    );

    _addTokenRefreshInterceptor(dio, user);

    client.launcherData = data;
    client.clientUser = user;

    return client;
  }

  static Future<HytaleClient> loginWithUser({
    required LauncherOptions options,
    required ClientUser user,
  }) async {
    final dio = Dio(
      BaseOptions(
        headers: {"Authorization": "Bearer ${user.credentials.accessToken}"},
      ),
    );

    _addTokenRefreshInterceptor(dio, user);

    final client = HytaleClient._(launcherOptions: options, dio: dio);

    final data = await client.accounts.fetchLauncherData();

    return client..launcherData = data;
  }

  static void _addTokenRefreshInterceptor(Dio dio, ClientUser user) {
    dio.interceptors.add(
      InterceptorsWrapper(
        onError: (DioException error, ErrorInterceptorHandler handler) async {
          if (error.response?.statusCode == 401) {
            try {
              final newCredentials = await user.credentials.refresh();
              final newToken = newCredentials.accessToken;

              dio.options.headers["Authorization"] = "Bearer $newToken";

              final options = error.requestOptions;
              options.headers["Authorization"] = "Bearer $newToken";
              final response = await dio.fetch(options);
              return handler.resolve(response);
            } catch (e) {
              print("dio error: $e");
              return handler.next(error);
            }
          }
          return handler.next(error);
        },
      ),
    );
  }
}

class LauncherOptions {
  final String basePath;
  const LauncherOptions({required this.basePath});
}
