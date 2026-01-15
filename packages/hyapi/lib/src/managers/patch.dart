import 'package:dio/dio.dart';
import 'package:hyapi/src/managers/manager.dart';
import 'package:hyapi/src/models/patch/patch_steps.dart';
import 'package:hyapi/src/utils/parsing_helpers.dart';

class PatchManager extends Manager {
  final dio = Dio(BaseOptions(baseUrl: "https://account-data.hytale.com/"));

  PatchManager({required super.client});

  Future<List<PatchStep>> listPatchSteps() async {
    final response = await dio.get("patches/linux/amd64/release/1");

    return parseMany(response.data, PatchStepMapper.fromMap);
  }
}
