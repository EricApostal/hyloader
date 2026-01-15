// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

part 'installer.mapper.dart';

@MappableClass()
class Installer with InstallerMappable {
  const Installer({
    required this.name,
    required this.link,
    this.size,
    this.checksum,
    this.checksumLink,
    this.signatureLink,
    this.downloadCount,
    this.metadataLink,
  });
  final String name;
  final String link;
  final int? size;
  final String? checksum;
  @MappableField(key: 'checksum_link')
  final String? checksumLink;
  @MappableField(key: 'signature_link')
  final String? signatureLink;
  @MappableField(key: 'download_count')
  final int? downloadCount;
  @MappableField(key: 'metadata_link')
  final String? metadataLink;


  static Installer fromJson(Map<String, dynamic> json) => InstallerMapper.ensureInitialized().decodeMap<Installer>(json);

}

