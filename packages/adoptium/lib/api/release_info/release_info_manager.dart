// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/architecture.dart';
import '../models/c_lib.dart';
import '../models/get_v3_info_available_releases_response.dart';
import '../models/get_v3_info_release_names_response.dart';
import '../models/get_v3_info_release_notes_release_name_response.dart';
import '../models/get_v3_info_release_versions_response.dart';
import '../models/heap_size.dart';
import '../models/image_type.dart';
import '../models/jvm_impl.dart';
import '../models/operating_system.dart';
import '../models/project.dart';
import '../models/release_type.dart';
import '../models/sort_method.dart';
import '../models/sort_order.dart';
import '../models/vendor.dart';

part 'release_info_manager.g.dart';

@RestApi()
abstract class ReleaseInfoManager {
  factory ReleaseInfoManager(Dio dio, {String? baseUrl}) = _ReleaseInfoManager;

  /// Returns information about available releases
  @GET('/v3/info/available_releases')
  Future<GetV3InfoAvailableReleasesResponse> getAvailableReleases({
    @Extras() Map<String, dynamic>? extras,
  });

  /// Returns a list of all release names.
  ///
  /// [architecture] - Architecture.
  ///
  /// [cLib] - C Lib type, typically would imply image_type has been set to staticlibs.
  ///
  /// [heapSize] - Heap Size.
  ///
  /// [imageType] - Image Type.
  ///
  /// [jvmImpl] - JVM Implementation.
  ///
  /// [lts] - Include only LTS releases.
  ///
  /// [os] - Operating System.
  ///
  /// [page] - Pagination page number.
  ///
  /// [pageSize] - Pagination page size.
  ///
  /// [project] - Project.
  ///
  /// [releaseType] - .
  /// <p>Type of release. Either a release version, known as General Availability(ga) or an Early Access(ea) </p>.
  ///
  ///
  /// [semver] - Indicates that any version arguments provided in this request were Adoptium semantic versions.
  ///
  /// [sortMethod] - Result sort method.
  ///
  /// [sortOrder] - Result sort order.
  ///
  /// [vendor] - <p>Vendor of the binary. This is the organisation that produced the binary package.</p>.
  ///
  /// [version] - .
  /// Java version range (maven style) of versions to include.
  ///
  /// e.g:.
  /// * `11.0.4.1+11.1`.
  /// * `[1.0,2.0)`.
  /// * `(,1.0]`.
  ///
  /// Details of maven version ranges can be found at.
  ///     <https://maven.apache.org/enforcer/enforcer-rules/versionRanges.html>.
  @GET('/v3/info/release_names')
  Future<GetV3InfoReleaseNamesResponse> getReleaseNames({
    @Query('page') int? page = 0,
    @Query('page_size') int? pageSize = 10,
    @Query('semver') bool? semver = false,
    @Query('architecture') Architecture? architecture,
    @Query('c_lib') CLib? cLib,
    @Query('heap_size') HeapSize? heapSize,
    @Query('image_type') ImageType? imageType,
    @Query('jvm_impl') JvmImpl? jvmImpl,
    @Query('lts') bool? lts,
    @Query('os') OperatingSystem? os,
    @Query('project') Project? project,
    @Query('release_type') ReleaseType? releaseType,
    @Query('sort_method') SortMethod? sortMethod,
    @Query('sort_order') SortOrder? sortOrder,
    @Query('vendor') Vendor? vendor,
    @Query('version') String? version,
    @Extras() Map<String, dynamic>? extras,
  });

  /// Returns release notes for a release version.
  ///
  /// [releaseName] - .
  /// <p>.
  ///     Name of the release as displayed in github or <a href="https://adoptopenjdk.net/">https://adoptopenjdk.net/</a> e.g.
  ///     <code>jdk-11.0.4+11, jdk8u172-b00-201807161800</code>.
  /// </p>.
  /// <p>.
  ///     A list of release names can be obtained from .
  ///     <a href="https://api.adoptium.net/v3/info/release_names">https://api.adoptium.net/v3/info/release_names</a>.
  /// </p>.
  ///
  ///
  /// [vendor] - <p>Vendor of the binary. This is the organisation that produced the binary package.</p>.
  @GET('/v3/info/release_notes/{release_name}')
  Future<GetV3InfoReleaseNotesReleaseNameResponse> getReleaseNotes({
    @Path('release_name') required String releaseName,
    @Query('vendor') Vendor? vendor,
    @Extras() Map<String, dynamic>? extras,
  });

  /// Returns a list of all release versions.
  ///
  /// [architecture] - Architecture.
  ///
  /// [cLib] - C Lib type, typically would imply image_type has been set to staticlibs.
  ///
  /// [heapSize] - Heap Size.
  ///
  /// [imageType] - Image Type.
  ///
  /// [jvmImpl] - JVM Implementation.
  ///
  /// [lts] - Include only LTS releases.
  ///
  /// [os] - Operating System.
  ///
  /// [page] - Pagination page number.
  ///
  /// [pageSize] - Pagination page size.
  ///
  /// [project] - Project.
  ///
  /// [releaseType] - .
  /// <p>Type of release. Either a release version, known as General Availability(ga) or an Early Access(ea) </p>.
  ///
  ///
  /// [semver] - Indicates that any version arguments provided in this request were Adoptium semantic versions.
  ///
  /// [sortMethod] - Result sort method.
  ///
  /// [sortOrder] - Result sort order.
  ///
  /// [vendor] - <p>Vendor of the binary. This is the organisation that produced the binary package.</p>.
  ///
  /// [version] - .
  /// Java version range (maven style) of versions to include.
  ///
  /// e.g:.
  /// * `11.0.4.1+11.1`.
  /// * `[1.0,2.0)`.
  /// * `(,1.0]`.
  ///
  /// Details of maven version ranges can be found at.
  ///     <https://maven.apache.org/enforcer/enforcer-rules/versionRanges.html>.
  @GET('/v3/info/release_versions')
  Future<GetV3InfoReleaseVersionsResponse> getReleaseVersions({
    @Query('page') int? page = 0,
    @Query('page_size') int? pageSize = 10,
    @Query('semver') bool? semver = false,
    @Query('architecture') Architecture? architecture,
    @Query('c_lib') CLib? cLib,
    @Query('heap_size') HeapSize? heapSize,
    @Query('image_type') ImageType? imageType,
    @Query('jvm_impl') JvmImpl? jvmImpl,
    @Query('lts') bool? lts,
    @Query('os') OperatingSystem? os,
    @Query('project') Project? project,
    @Query('release_type') ReleaseType? releaseType,
    @Query('sort_method') SortMethod? sortMethod,
    @Query('sort_order') SortOrder? sortOrder,
    @Query('vendor') Vendor? vendor,
    @Query('version') String? version,
    @Extras() Map<String, dynamic>? extras,
  });
}
