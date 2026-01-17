import 'package:hive_ce/hive_ce.dart';
import 'package:hyapi/hyapi.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'client.g.dart';

@Riverpod(keepAlive: true)
class ClientController extends _$ClientController {
  HytaleClient? build() {
    return null;
  }

  Future<HytaleClient> login() async {
    final client = await HytaleClient.login(
      options: LauncherOptions(basePath: await _getBasePath()),
    );

    await _saveUser(client.clientUser);
    print("logged in and saved user!");

    state = client;

    return client;
  }

  Future<HytaleClient?> tryRestoreSession() async {
    final box = Hive.box("accounts");
    final rawUser = box.values.firstOrNull as String?;
    if (rawUser == null) return null;

    final user = ClientUserMapper.fromJson(rawUser);

    final client = await HytaleClient.loginWithUser(
      user: user,
      options: LauncherOptions(basePath: await _getBasePath()),
    );

    await _saveUser(client.clientUser);

    print("restored!");

    state = client;

    return client;
  }

  Future<void> _saveUser(ClientUser user) async {
    final box = Hive.box("accounts");
    await box.put(user.ownerId, user.toJson());
  }

  Future<String> _getBasePath() async {
    final baseDocumentDirectory = await getApplicationDocumentsDirectory();
    return "${baseDocumentDirectory.path}/hyloader";
  }
}
