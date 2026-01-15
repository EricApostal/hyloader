// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

part 'get_v3_info_available_releases_response.mapper.dart';

@MappableClass()
class GetV3InfoAvailableReleasesResponse with GetV3InfoAvailableReleasesResponseMappable {
  const GetV3InfoAvailableReleasesResponse({
    required this.availableReleases,
    required this.availableLtsReleases,
    this.mostRecentLts,
    this.mostRecentFeatureRelease,
    this.mostRecentFeatureVersion,
    this.tipVersion,
  });
  @MappableField(key: 'available_releases')
  final List<int> availableReleases;
  @MappableField(key: 'available_lts_releases')
  final List<int> availableLtsReleases;
  @MappableField(key: 'most_recent_lts')
  final int? mostRecentLts;
  @MappableField(key: 'most_recent_feature_release')
  final int? mostRecentFeatureRelease;
  @MappableField(key: 'most_recent_feature_version')
  final int? mostRecentFeatureVersion;
  @MappableField(key: 'tip_version')
  final int? tipVersion;


  static GetV3InfoAvailableReleasesResponse fromJson(Map<String, dynamic> json) => GetV3InfoAvailableReleasesResponseMapper.ensureInitialized().decodeMap<GetV3InfoAvailableReleasesResponse>(json);

}

