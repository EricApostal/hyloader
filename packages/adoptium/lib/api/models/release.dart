// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

import 'binary.dart';
import 'date_time.dart';
import 'release_notes_package.dart';
import 'release_type.dart';
import 'source_package.dart';
import 'vendor.dart';
import 'version_data.dart';

part 'release.mapper.dart';

@MappableClass()
class Release with ReleaseMappable {
  const Release({
    required this.id,
    required this.releaseLink,
    required this.releaseName,
    required this.timestamp,
    required this.updatedAt,
    required this.binaries,
    required this.releaseType,
    required this.versionData,
    this.downloadCount,
    this.vendor,
    this.source,
    this.releaseNotes,
    this.aqavitResultsLink,
  });
  final String id;
  @MappableField(key: 'release_link')
  final String releaseLink;
  @MappableField(key: 'release_name')
  final String releaseName;
  final DateTime timestamp;
  @MappableField(key: 'updated_at')
  final DateTime updatedAt;
  final List<Binary> binaries;
  @MappableField(key: 'release_type')
  final ReleaseType releaseType;
  @MappableField(key: 'version_data')
  final VersionData versionData;
  @MappableField(key: 'download_count')
  final int? downloadCount;
  final Vendor? vendor;
  final SourcePackage? source;
  @MappableField(key: 'release_notes')
  final ReleaseNotesPackage? releaseNotes;
  @MappableField(key: 'aqavit_results_link')
  final String? aqavitResultsLink;


  static Release fromJson(Map<String, dynamic> json) => ReleaseMapper.ensureInitialized().decodeMap<Release>(json);

}

