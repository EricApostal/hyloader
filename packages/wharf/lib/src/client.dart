import 'dart:io';

import 'package:wharf/generated/api/wharf_native.dart';

class WharfService {
  static void patch({
    required File patchFile,
    required File sigFile,
    required File oldFile,
    required File newFile,
  }) {
    patchWharf(
      patchPath: patchFile.path,
      sigPath: sigFile.path,
      oldPath: oldFile.path,
      newPath: newFile.path,
    );
  }
}
