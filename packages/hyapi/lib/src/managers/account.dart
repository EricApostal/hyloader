import 'package:hyapi/src/managers/manager.dart';
import 'package:hyapi/src/models/launcher/launcher.dart';
import 'package:hyapi/src/utils/system.dart';

class AccountManager extends Manager {
  const AccountManager({required super.client});

  Future<LauncherData> fetchLauncherData() async {
    final response = await client.dio.get(
      "https://account-data.hytale.com/my-account/get-launcher-data?arch=${getOs()}",
    );

    return LauncherDataMapper.fromMap(response.data);
  }
}
