// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

import 'version_data.dart';

part 'get_v3_info_release_versions_response.mapper.dart';

@MappableClass()
class GetV3InfoReleaseVersionsResponse with GetV3InfoReleaseVersionsResponseMappable {
  const GetV3InfoReleaseVersionsResponse({
    required this.versions,
  });
  final List<VersionData> versions;


  static GetV3InfoReleaseVersionsResponse fromJson(Map<String, dynamic> json) => GetV3InfoReleaseVersionsResponseMapper.ensureInitialized().decodeMap<GetV3InfoReleaseVersionsResponse>(json);

}

