// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

import 'version_data.dart';
import 'vendor.dart';
import 'release_note.dart';

part 'get_v3_info_release_notes_release_name_response.mapper.dart';

@MappableClass()
class GetV3InfoReleaseNotesReleaseNameResponse with GetV3InfoReleaseNotesReleaseNameResponseMappable {
  const GetV3InfoReleaseNotesReleaseNameResponse({
    required this.versionData,
    required this.id,
    required this.releaseName,
    required this.releaseNotes,
    this.vendor,
  });
  @MappableField(key: 'version_data')
  final VersionData versionData;
  final String id;
  @MappableField(key: 'release_name')
  final String releaseName;
  @MappableField(key: 'release_notes')
  final List<ReleaseNote> releaseNotes;
  final Vendor? vendor;


  static GetV3InfoReleaseNotesReleaseNameResponse fromJson(Map<String, dynamic> json) => GetV3InfoReleaseNotesReleaseNameResponseMapper.ensureInitialized().decodeMap<GetV3InfoReleaseNotesReleaseNameResponse>(json);

}

