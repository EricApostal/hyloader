import 'package:dart_mappable/dart_mappable.dart';
import 'package:hyapi/src/models/patch/patchline.dart';

part 'instance.mapper.dart';

/// An instance of hytale containing it's own data
@MappableClass()
class HytaleInstance with HytaleInstanceMappable {
  final String id;
  final String name;
  final PatchTrack track;
  final String version;
  const HytaleInstance({
    required this.id,
    required this.name,
    required this.track,
    required this.version,
  });
}

@MappableClass()
class HytaleInstanceBuilder with HytaleInstanceBuilderMappable {
  final String name;
  final PatchTrack track;
  final String version;
  const HytaleInstanceBuilder({
    required this.name,
    required this.track,
    // I guess this is patch?
    required this.version,
  });
}
