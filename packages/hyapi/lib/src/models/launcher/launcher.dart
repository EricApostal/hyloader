import 'package:dart_mappable/dart_mappable.dart';
import 'package:hyapi/src/models/account/profile.dart';
import 'package:hyapi/src/models/patch/patchline.dart';

part 'launcher.mapper.dart';

@MappableClass()
class LauncherData with LauncherDataMappable {
  final String owner;
  final Map<PatchTrack, Patchline>? patchlines;
  final List<HytaleProfile> profiles;
  // todo: I'm guessing this is nullable
  // also bro who cooked and decided on snake case here
  @MappableField(key: "eula_accepted_at")
  final DateTime? eulaAcceptedAt;
  const LauncherData({
    required this.owner,
    this.patchlines,
    required this.profiles,
    this.eulaAcceptedAt,
  });
}
