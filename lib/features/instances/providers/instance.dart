import 'package:hyapi/hyapi.dart';
import 'package:hyloader/features/authentication/repositories/client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'instance.g.dart';

@Riverpod(keepAlive: true)
class Instances extends _$Instances {
  List<HytaleInstance> build() {
    final client = ref.watch(clientControllerProvider);
    if (client == null) {
      return [];
    }

    return client.instances.listAll();
  }
}
