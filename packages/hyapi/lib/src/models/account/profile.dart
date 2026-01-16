import 'package:dart_mappable/dart_mappable.dart';

part 'profile.mapper.dart';

@MappableClass()
class HytaleProfile with HytaleProfileMappable {
  @MappableField(key: "uuid")
  final String id;

  final DateTime createdAt;
  final List<String> entitlements;
  final DateTime nextNameChangeAt;

  // todo: bruh
  final String skin;

  final String username;

  const HytaleProfile({
    required this.id,
    required this.createdAt,
    required this.entitlements,
    required this.nextNameChangeAt,
    required this.skin,
    required this.username,
  });
}
