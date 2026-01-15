import 'dart:io';

import 'package:hive_ce/hive_ce.dart';
import 'package:hyapi/src/managers/manager.dart';

class StorageManager extends Manager {
  const StorageManager({required super.client});
  Future<void> initialize() async {
    final dataDirectory = Directory(
      "${client.launcherOptions.basePath.toString()}/database",
    );

    if (!dataDirectory.existsSync()) {
      dataDirectory.createSync(recursive: true);
    }

    Hive.init(dataDirectory.path);

    await Hive.openBox("instances");
    await Hive.openBox("accounts");
  }
}
