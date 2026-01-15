// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/architecture.dart';
import '../models/binary_asset_view.dart';
import '../models/c_lib.dart';
import '../models/date_time.dart';
import '../models/heap_size.dart';
import '../models/image_type.dart';
import '../models/jvm_impl.dart';
import '../models/operating_system.dart';
import '../models/project.dart';
import '../models/release.dart';
import '../models/release_type.dart';
import '../models/sort_method.dart';
import '../models/sort_order.dart';
import '../models/vendor.dart';

part 'assets_manager.g.dart';

@RestApi()
abstract class AssetsManager {
  factory AssetsManager(Dio dio, {String? baseUrl}) = _AssetsManager;

  /// Returns release information.
  ///
  /// List of information about builds that match the current query.
  ///
  /// [featureVersion] - .
  /// <p>.
  ///     Feature release version you wish to download. Feature versions are whole numbers e.g. <code>8,11,16,17,18</code>.
  /// </p>.
  /// <p>.
  ///     Available Feature versions can be obtained from .
  ///     <a href="https://api.adoptium.net/v3/info/available_releases">https://api.adoptium.net/v3/info/available_releases</a>.
  /// </p>.
  ///
  ///
  /// [releaseType] - .
  /// <p>Type of release. Either a release version, known as General Availability(ga) or an Early Access(ea) </p>.
  ///
  ///
  /// [architecture] - Architecture.
  ///
  /// [before] - <p>Return binaries whose updated_at is before the given date/time. When a date is given the match is inclusive of the given day. <ul> <li>2020-01-21</li> <li>2020-01-21T10:15:30</li> <li>20200121</li> <li>2020-12-21T10:15:30Z</li> <li>2020-12-21+01:00</li> </ul></p> .
  ///
  /// [cLib] - C Lib type, typically would imply image_type has been set to staticlibs.
  ///
  /// [heapSize] - Heap Size.
  ///
  /// [imageType] - Image Type.
  ///
  /// [jvmImpl] - JVM Implementation.
  ///
  /// [os] - Operating System.
  ///
  /// [page] - Pagination page number.
  ///
  /// [pageSize] - Pagination page size.
  ///
  /// [project] - Project.
  ///
  /// [sortMethod] - Result sort method.
  ///
  /// [sortOrder] - Result sort order.
  ///
  /// [vendor] - <p>Vendor of the binary. This is the organisation that produced the binary package.</p>.
  @GET('/v3/assets/feature_releases/{feature_version}/{release_type}')
  Future<List<Release>> searchReleases({
    @Path('feature_version') required int featureVersion,
    @Path('release_type') required ReleaseType releaseType,
    @Query('page') int? page = 0,
    @Query('page_size') int? pageSize = 10,
    @Query('architecture') Architecture? architecture,
    @Query('before') DateTime? before,
    @Query('c_lib') CLib? cLib,
    @Query('heap_size') HeapSize? heapSize,
    @Query('image_type') ImageType? imageType,
    @Query('jvm_impl') JvmImpl? jvmImpl,
    @Query('os') OperatingSystem? os,
    @Query('project') Project? project,
    @Query('sort_method') SortMethod? sortMethod,
    @Query('sort_order') SortOrder? sortOrder,
    @Query('vendor') Vendor? vendor,
    @Extras() Map<String, dynamic>? extras,
  });

  /// Returns list of latest assets for the given feature version and jvm impl.
  ///
  /// [featureVersion] - .
  /// <p>.
  ///     Feature release version you wish to download. Feature versions are whole numbers e.g. <code>8,11,16,17,18</code>.
  /// </p>.
  /// <p>.
  ///     Available Feature versions can be obtained from .
  ///     <a href="https://api.adoptium.net/v3/info/available_releases">https://api.adoptium.net/v3/info/available_releases</a>.
  /// </p>.
  ///
  ///
  /// [jvmImpl] - JVM Implementation.
  ///
  /// [architecture] - Architecture.
  ///
  /// [imageType] - Image Type.
  ///
  /// [os] - Operating System.
  ///
  /// [vendor] - <p>Vendor of the binary. This is the organisation that produced the binary package.</p>.
  @GET('/v3/assets/latest/{feature_version}/{jvm_impl}')
  Future<List<BinaryAssetView>> getLatestAssets({
    @Path('feature_version') required int featureVersion,
    @Path('jvm_impl') required JvmImpl jvmImpl,
    @Query('architecture') Architecture? architecture,
    @Query('image_type') ImageType? imageType,
    @Query('os') OperatingSystem? os,
    @Query('vendor') Vendor? vendor,
    @Extras() Map<String, dynamic>? extras,
  });

  /// Returns release information.
  ///
  /// List of releases with the given release name.
  ///
  /// [releaseName] - Name of the release i.e .
  ///
  /// [vendor] - <p>Vendor of the binary. This is the organisation that produced the binary package.</p>.
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
  /// [os] - Operating System.
  ///
  /// [project] - Project.
  @GET('/v3/assets/release_name/{vendor}/{release_name}')
  Future<Release> getReleaseInfo({
    @Path('release_name') required String releaseName,
    @Path('vendor') required Vendor vendor,
    @Query('architecture') Architecture? architecture,
    @Query('c_lib') CLib? cLib,
    @Query('heap_size') HeapSize? heapSize,
    @Query('image_type') ImageType? imageType,
    @Query('jvm_impl') JvmImpl? jvmImpl,
    @Query('os') OperatingSystem? os,
    @Query('project') Project? project,
    @Extras() Map<String, dynamic>? extras,
  });

  /// Returns release information about the specified version.
  ///
  /// List of information about builds that match the current query.
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
  ///
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
  @GET('/v3/assets/version/{version}')
  Future<List<Release>> searchReleasesByVersion({
    @Path('version') required String version,
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
    @Extras() Map<String, dynamic>? extras,
  });
}
