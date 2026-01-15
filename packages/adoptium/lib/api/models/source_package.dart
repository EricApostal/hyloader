// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

part 'source_package.mapper.dart';

@MappableClass()
class SourcePackage with SourcePackageMappable {
  const SourcePackage({
    required this.name,
    required this.link,
    this.size,
  });
  final String name;
  final String link;
  final int? size;


  static SourcePackage fromJson(Map<String, dynamic> json) => SourcePackageMapper.ensureInitialized().decodeMap<SourcePackage>(json);

}

