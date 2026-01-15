// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/architecture.dart';
import '../models/attestation.dart';
import '../models/image_type.dart';
import '../models/jvm_impl.dart';
import '../models/operating_system.dart';
import '../models/project.dart';
import '../models/vendor.dart';

part 'attestations_manager.g.dart';

@RestApi()
abstract class AttestationsManager {
  factory AttestationsManager(Dio dio, {String? baseUrl}) = _AttestationsManager;

  /// Returns attestations for the given release.
  ///
  /// Return the list of attestations that match the given release name.
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
  /// [project] - Project.
  @GET('/v3/attestations/release_name/{release_name}')
  Future<List<Attestation>> listAttestationsForRelease({
    @Path('release_name') required String releaseName,
    @Query('project') Project? project,
    @Extras() Map<String, dynamic>? extras,
  });

  /// Returns matching attestations.
  ///
  /// Return the attestations that matches the given query.
  ///
  /// [arch] - Architecture.
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
  /// [project] - Project.
  @GET('/v3/attestations/release_name/{release_name}/{os}/{arch}/{image_type}/{jvm_impl}/{vendor}')
  Future<List<Attestation>> listAttestationsForAssetBinary({
    @Path('arch') required Architecture arch,
    @Path('image_type') required ImageType imageType,
    @Path('jvm_impl') required JvmImpl jvmImpl,
    @Path('os') required OperatingSystem os,
    @Path('release_name') required String releaseName,
    @Path('vendor') required Vendor vendor,
    @Query('project') Project? project,
    @Extras() Map<String, dynamic>? extras,
  });

  /// Returns attestations that target the given SHA256 checksum.
  ///
  /// Return the list of attestations that have the matching target binary SHA256 checksum.
  ///
  /// [targetChecksum] - Target binary SHA256 checksum.
  ///
  /// [project] - Project.
  @GET('/v3/attestations/target_checksum/{target_checksum}')
  Future<List<Attestation>> listAttestationsForTargetChecksum({
    @Path('target_checksum') required String targetChecksum,
    @Query('project') Project? project,
    @Extras() Map<String, dynamic>? extras,
  });
}
