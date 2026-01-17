import 'dart:io';

import 'package:hyapi/src/managers/manager.dart';
import 'package:hyapi/src/models/launcher/launcher.dart';
import 'package:hyapi/src/utils/architecture.dart';

class AccountManager extends Manager {
  const AccountManager({required super.client});

  Future<LauncherData> fetchLauncherData() async {
    final response = await client.dio.get(
      "https://account-data.hytale.com/my-account/get-launcher-data?arch=${getArchitecture()}&os=${Platform.operatingSystem}",
    );

    return LauncherDataMapper.fromMap(response.data);
  }
}
