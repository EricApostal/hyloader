// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

part 'get_v3_info_release_names_response.mapper.dart';

@MappableClass()
class GetV3InfoReleaseNamesResponse with GetV3InfoReleaseNamesResponseMappable {
  const GetV3InfoReleaseNamesResponse({
    required this.releases,
  });
  final List<String> releases;


  static GetV3InfoReleaseNamesResponse fromJson(Map<String, dynamic> json) => GetV3InfoReleaseNamesResponseMapper.ensureInitialized().decodeMap<GetV3InfoReleaseNamesResponse>(json);

}

