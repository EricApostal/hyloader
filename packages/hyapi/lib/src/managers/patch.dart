import 'dart:typed_data';

import 'package:hyapi/src/managers/manager.dart';
import 'package:hyapi/src/models/patch/patch_steps.dart';
import 'package:hyapi/src/utils/parsing_helpers.dart';

class PatchManager extends Manager {
  PatchManager({required super.client});

  Future<List<PatchStep>> listPatchSteps() async {
    final response = await client.dio.get(
      "https://account-data.hytale.com/patches/linux/amd64/release/1",
    );

    return parseMany(response.data["steps"], PatchStepMapper.fromMap);
  }

  Future<void> downloadPatch({
    required int currentPatch,
    required int latestPatch,
    required String savePath,
  }) async {
    final uri =
        "https://game-patches.hytale.com/patches/linux/amd64/release/$currentPatch/$latestPatch.pwr";

    print("start download");
    final response = await client.dio.download(
      uri,
      savePath,
      onReceiveProgress: (received, total) {
        if (total <= 0) return;
        print('percentage: ${(received / total * 100).toStringAsFixed(0)}%');
      },
    );
    print("end download");
  }

  Future<void> downloadSig({
    required int currentPatch,
    required int latestPatch,
    required String savePath,
  }) async {
    final uri =
        "https://game-patches.hytale.com/patches/linux/amd64/release/$currentPatch/$latestPatch.pwr.sig";

    await client.dio.download(uri, savePath);
  }
}
