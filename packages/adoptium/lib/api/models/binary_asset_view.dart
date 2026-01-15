// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

import 'binary.dart';
import 'vendor.dart';
import 'version_data.dart';

part 'binary_asset_view.mapper.dart';

@MappableClass()
class BinaryAssetView with BinaryAssetViewMappable {
  const BinaryAssetView({
    required this.releaseName,
    required this.releaseLink,
    this.binary,
    this.vendor,
    this.version,
  });
  @MappableField(key: 'release_name')
  final String releaseName;
  @MappableField(key: 'release_link')
  final String releaseLink;
  final Binary? binary;
  final Vendor? vendor;
  final VersionData? version;


  static BinaryAssetView fromJson(Map<String, dynamic> json) => BinaryAssetViewMapper.ensureInitialized().decodeMap<BinaryAssetView>(json);

}

