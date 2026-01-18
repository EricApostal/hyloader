import 'dart:io';

import 'package:hyapi/src/managers/manager.dart';
import 'package:hyapi/src/models/patch/patch_steps.dart';
import 'package:hyapi/src/models/patch/patchline.dart';
import 'package:hyapi/src/utils/system.dart';
import 'package:hyapi/src/utils/parsing_helpers.dart';
import 'package:wharf_flutter/wharf_flutter.dart';

class PatchManager extends Manager {
  PatchManager({required super.client});

  /// Fetches the patch steps needed to recieve the latest update
  Future<List<PatchStep>> listPatchSteps(
    int currentPatch, {
    PatchTrack track = .release,
  }) async {
    final response = await client.dio.get(
      "https://account-data.hytale.com/patches/${getOs()}/${getArchitecture()}/${track.toValue()}/$currentPatch",
    );

    return parseMany(response.data["steps"], PatchStepMapper.fromMap);
  }

  Future<void> downloadPatch({
    required int currentPatch,
    required int latestPatch,
    required String savePath,
  }) async {
    final uri =
        "https://game-patches.hytale.com/patches/${getOs()}/${getArchitecture()}/release/$currentPatch/$latestPatch.pwr";

    await client.dio.download(
      uri,
      savePath,
      onReceiveProgress: (received, total) {
        if (total <= 0) return;
        print(
          'Patch Download: ${(received / total * 100).toStringAsFixed(0)}%',
        );
      },
    );
  }

  Future<void> downloadSig({
    required int currentPatch,
    required int latestPatch,
    required String savePath,
  }) async {
    final uri =
        "https://game-patches.hytale.com/patches/${getOs()}/${getArchitecture()}/release/$currentPatch/$latestPatch.pwr.sig";

    await client.dio.download(uri, savePath);
  }

  Future<void> downloadAndApplyLatestPatch() async {
    // idk how to check for existing, maybe a sig or smth but not sure if that works
    // actually this is probably a trust me bro and I store it in hive
    final currentPatch = 0;

    final patched = await client.patches.listPatchSteps(0);
    final base = "${client.launcherOptions.basePath}/instances";

    // this can be a list, so it's possible patches will need to be hopped between
    // ie: you can't go from patch 2 -> 15, but you can go from 2->7, then 7->15
    // idk if that's true, but it sounds like it makes sense maybe
    final latestPatch = patched.first.to;
    final patchPath = "$base/downloads/patch-$latestPatch.pwr";
    final sigPath = "$base/downloads/patch-$latestPatch.pwr.sig";
    print("sig path = $sigPath");

    await downloadPatch(
      currentPatch: currentPatch,
      latestPatch: latestPatch,
      savePath: patchPath,
    );

    await downloadSig(
      currentPatch: currentPatch,
      latestPatch: latestPatch,
      savePath: sigPath,
    );

    final patchFile = File(patchPath);
    final sigFile = File(sigPath);

    final oldFolder = await Directory("$base/placeholder").create();
    final newFolder = await Directory("$base/game").create();

    WharfService.patch(
      patchFile: patchFile,
      sigFile: sigFile,
      // yeah yeah the types are dookie will fix
      oldFile: File(oldFolder.path),
      newFile: File(newFolder.path),
    );
  }
}
