// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

part 'release_notes_package.mapper.dart';

@MappableClass()
class ReleaseNotesPackage with ReleaseNotesPackageMappable {
  const ReleaseNotesPackage({
    required this.name,
    required this.link,
    this.size,
  });
  final String name;
  final String link;
  final int? size;


  static ReleaseNotesPackage fromJson(Map<String, dynamic> json) => ReleaseNotesPackageMapper.ensureInitialized().decodeMap<ReleaseNotesPackage>(json);

}

