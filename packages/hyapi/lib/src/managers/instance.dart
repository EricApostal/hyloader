import 'package:hive_ce/hive_ce.dart';
import 'package:hyapi/src/managers/manager.dart';
import 'package:hyapi/src/models/instances/instance.dart';
import 'package:uuid/v6.dart';

class InstanceManager extends Manager {
  const InstanceManager({required super.client});

  Future<HytaleInstance> create(HytaleInstanceBuilder builder) async {
    final box = Hive.box("instances");
    final instance = HytaleInstance(
      id: UuidV6().generate(),
      name: builder.name,
      track: builder.track,
      version: builder.version,
    );

    await box.put(instance.id, instance.toJson());
    return instance;
  }

  HytaleInstance get(String id) {
    final box = Hive.box("instances");

    final raw = box.get(id) as String;
    return HytaleInstanceMapper.fromJson(raw);
  }

  List<HytaleInstance> listAll() {
    final box = Hive.box("instances");
    final instances = box.values.map((e) => HytaleInstanceMapper.fromJson(e));

    return instances.toList();
  }
}
