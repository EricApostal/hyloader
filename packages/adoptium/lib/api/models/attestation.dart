// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

import 'architecture.dart';
import 'image_type.dart';
import 'instant.dart';
import 'jvm_impl.dart';
import 'operating_system.dart';
import 'vendor.dart';

part 'attestation.mapper.dart';

@MappableClass()
class Attestation with AttestationMappable {
  const Attestation({
    required this.id,
    required this.filename,
    required this.os,
    required this.architecture,
    required this.imageType,
    this.featureVersion,
    this.releaseName,
    this.jvmImpl,
    this.vendor,
    this.committedDate,
    this.targetChecksum,
    this.assessorOrg,
    this.assessorAffirmation,
    this.assessorClaimPredicate,
    this.attestationLink,
    this.attestationPublicSigningKeyLink,
  });
  final String id;
  final String filename;
  final OperatingSystem os;
  final Architecture architecture;
  @MappableField(key: 'image_type')
  final ImageType imageType;
  final int? featureVersion;
  @MappableField(key: 'release_name')
  final String? releaseName;
  @MappableField(key: 'jvm_impl')
  final JvmImpl? jvmImpl;
  final Vendor? vendor;
  final Instant? committedDate;
  @MappableField(key: 'target_checksum')
  final String? targetChecksum;
  @MappableField(key: 'assessor_org')
  final String? assessorOrg;
  @MappableField(key: 'assessor_affirmation')
  final String? assessorAffirmation;
  @MappableField(key: 'assessor_claim_predicate')
  final String? assessorClaimPredicate;
  @MappableField(key: 'attestation_link')
  final String? attestationLink;
  @MappableField(key: 'attestation_public_signing_key_link')
  final String? attestationPublicSigningKeyLink;


  static Attestation fromJson(Map<String, dynamic> json) => AttestationMapper.ensureInitialized().decodeMap<Attestation>(json);

}

