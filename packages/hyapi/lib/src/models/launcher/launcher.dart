import 'package:dart_mappable/dart_mappable.dart';
import 'package:hyapi/src/models/patch/patchline.dart';

part 'launcher.mapper.dart';

@MappableClass()
class LauncherData with LauncherDataMappable {
  final String owner;
  final Map<PatchTrack, Patchline> patchlines;
  // todo: I'm guessing this is nullable
  final DateTime? eulaAcceptedAt;
  const LauncherData({
    required this.owner,
    required this.patchlines,
    this.eulaAcceptedAt,
  });
}
