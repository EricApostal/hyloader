import 'dart:io';

import 'package:wharf_flutter/generated/api/wharf_flutter.dart';

class WharfService {
  static Future<void> patch({
    required File patchFile,
    required File sigFile,
    required File oldFile,
    required File newFile,
    void Function(int count, int total)? onReceiveProgress,
  }) async {
    final stream = patchWharf(
      patchPath: patchFile.path,
      sigPath: sigFile.path,
      oldPath: oldFile.path,
      newPath: newFile.path,
    );

    await for (final count in stream) {
      onReceiveProgress?.call(count, -1);
    }
  }
}
