import 'package:hyapi/hyapi.dart';
import 'package:hyloader/features/instances/repositories/instance.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'instance.g.dart';

@Riverpod(keepAlive: true)
class Instances extends _$Instances {
  List<HytaleInstance> build() {
    return InstanceManager.listAll();
  }

  Future<HytaleInstance> create(HytaleInstanceBuilder builder) async {
    final instance = await InstanceManager.create(builder);
    ref.invalidateSelf();

    return instance;
  }
}
