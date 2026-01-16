import 'package:dart_mappable/dart_mappable.dart';

part 'patchline.mapper.dart';

@MappableEnum()
enum PatchTrack {
  @MappableValue("pre-release")
  preRelease,
  @MappableValue("release")
  release,
}

@MappableClass()
class Patchline with PatchlineMappable {
  final String buildVersion;
  final int newest;
  const Patchline({required this.buildVersion, required this.newest});
}
