// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/architecture.dart';
import '../models/c_lib.dart';
import '../models/heap_size.dart';
import '../models/image_type.dart';
import '../models/jvm_impl.dart';
import '../models/operating_system.dart';
import '../models/project.dart';
import '../models/release_type.dart';
import '../models/vendor.dart';

part 'binary_manager.g.dart';

@RestApi()
abstract class BinaryManager {
  factory BinaryManager(Dio dio, {String? baseUrl}) = _BinaryManager;

  /// Redirects to the binary that matches your current query.
  ///
  /// Redirects to the binary that matches your current query.
  ///
  /// [arch] - Architecture.
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
  /// [heapSize] - Heap Size.
  ///
  /// [imageType] - Image Type.
  ///
  /// [jvmImpl] - JVM Implementation.
  ///
  /// [os] - Operating System.
  ///
  /// [releaseType] - .
  /// <p>Type of release. Either a release version, known as General Availability(ga) or an Early Access(ea) </p>.
  ///
  ///
  /// [vendor] - <p>Vendor of the binary. This is the organisation that produced the binary package.</p>.
  ///
  /// [cLib] - C Lib type, typically would imply image_type has been set to staticlibs.
  ///
  /// [project] - Project.
  @GET('/v3/binary/latest/{feature_version}/{release_type}/{os}/{arch}/{image_type}/{jvm_impl}/{heap_size}/{vendor}')
  Future<void> getBinary({
    @Path('arch') required Architecture arch,
    @Path('feature_version') required int featureVersion,
    @Path('heap_size') required HeapSize heapSize,
    @Path('image_type') required ImageType imageType,
    @Path('jvm_impl') required JvmImpl jvmImpl,
    @Path('os') required OperatingSystem os,
    @Path('release_type') required ReleaseType releaseType,
    @Path('vendor') required Vendor vendor,
    @Query('c_lib') CLib? cLib,
    @Query('project') Project? project,
    @Extras() Map<String, dynamic>? extras,
  });

  /// Redirects to the binary that matches your current query.
  ///
  /// Redirects to the binary that matches your current query.
  ///
  /// [arch] - Architecture.
  ///
  /// [heapSize] - Heap Size.
  ///
  /// [imageType] - Image Type.
  ///
  /// [jvmImpl] - JVM Implementation.
  ///
  /// [os] - Operating System.
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
  ///
  /// [cLib] - C Lib type, typically would imply image_type has been set to staticlibs.
  ///
  /// [project] - Project.
  @GET('/v3/binary/version/{release_name}/{os}/{arch}/{image_type}/{jvm_impl}/{heap_size}/{vendor}')
  Future<void> getBinaryByVersion({
    @Path('arch') required Architecture arch,
    @Path('heap_size') required HeapSize heapSize,
    @Path('image_type') required ImageType imageType,
    @Path('jvm_impl') required JvmImpl jvmImpl,
    @Path('os') required OperatingSystem os,
    @Path('release_name') required String releaseName,
    @Path('vendor') required Vendor vendor,
    @Query('c_lib') CLib? cLib,
    @Query('project') Project? project,
    @Extras() Map<String, dynamic>? extras,
  });
}
