// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';

import 'assets/assets_manager.dart';
import 'attestations/attestations_manager.dart';
import 'binary/binary_manager.dart';
import 'checksum/checksum_manager.dart';
import 'release_info/release_info_manager.dart';
import 'installer/installer_manager.dart';
import 'signature/signature_manager.dart';
import 'types/types_manager.dart';

/// v3 `v3.0.0`.
///
///
class AdoptiumClient {
  AdoptiumClient(
    Dio dio, {
    String? baseUrl,
  })  : _dio = dio,
        _baseUrl = baseUrl;

  final Dio _dio;
  final String? _baseUrl;

  static String get version => '3.0.0';

  AssetsManager? _assets;
  AttestationsManager? _attestations;
  BinaryManager? _binary;
  ChecksumManager? _checksum;
  ReleaseInfoManager? _releaseInfo;
  InstallerManager? _installer;
  SignatureManager? _signature;
  TypesManager? _types;

  AssetsManager get assets => _assets ??= AssetsManager(_dio, baseUrl: _baseUrl);

  AttestationsManager get attestations => _attestations ??= AttestationsManager(_dio, baseUrl: _baseUrl);

  BinaryManager get binary => _binary ??= BinaryManager(_dio, baseUrl: _baseUrl);

  ChecksumManager get checksum => _checksum ??= ChecksumManager(_dio, baseUrl: _baseUrl);

  ReleaseInfoManager get releaseInfo => _releaseInfo ??= ReleaseInfoManager(_dio, baseUrl: _baseUrl);

  InstallerManager get installer => _installer ??= InstallerManager(_dio, baseUrl: _baseUrl);

  SignatureManager get signature => _signature ??= SignatureManager(_dio, baseUrl: _baseUrl);

  TypesManager get types => _types ??= TypesManager(_dio, baseUrl: _baseUrl);
}
