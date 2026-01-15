// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

part 'version_data.mapper.dart';

@MappableClass()
class VersionData with VersionDataMappable {
  const VersionData({
    required this.semver,
    required this.openjdkVersion,
    this.major,
    this.minor,
    this.security,
    this.patch,
    this.pre,
    this.adoptBuildNumber,
    this.build,
    this.optional,
  });
  final String semver;
  @MappableField(key: 'openjdk_version')
  final String openjdkVersion;
  final int? major;
  final int? minor;
  final int? security;
  final int? patch;
  final String? pre;
  @MappableField(key: 'adopt_build_number')
  final int? adoptBuildNumber;
  final int? build;
  final String? optional;


  static VersionData fromJson(Map<String, dynamic> json) => VersionDataMapper.ensureInitialized().decodeMap<VersionData>(json);

}

