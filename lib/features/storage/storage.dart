import 'dart:io';

import 'package:hive_ce/hive.dart';
import 'package:path_provider/path_provider.dart';

class StorageService {
  static Future<void> init() async {
    final baseDocumentDirectory = await getApplicationDocumentsDirectory();
    final basePath = "${baseDocumentDirectory.path}/hyloader/database";
    await Directory(basePath).create(recursive: true);
    Hive.init(basePath);

    await Hive.openBox('accounts');
  }
}
