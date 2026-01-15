// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

import 'architecture.dart';
import 'c_lib.dart';
import 'date_time.dart';
import 'heap_size.dart';
import 'image_type.dart';
import 'installer.dart';
import 'jvm_impl.dart';
import 'operating_system.dart';
import 'package.dart';
import 'project.dart';

part 'binary.mapper.dart';

@MappableClass()
class Binary with BinaryMappable {
  const Binary({
    required this.os,
    required this.architecture,
    required this.imageType,
    required this.heapSize,
    required this.updatedAt,
    this.cLib,
    this.jvmImpl,
    this.package,
    this.installer,
    this.downloadCount,
    this.scmRef,
    this.project,
  });
  final OperatingSystem os;
  final Architecture architecture;
  @MappableField(key: 'image_type')
  final ImageType imageType;
  @MappableField(key: 'heap_size')
  final HeapSize heapSize;
  @MappableField(key: 'updated_at')
  final DateTime updatedAt;
  @MappableField(key: 'c_lib')
  final CLib? cLib;
  @MappableField(key: 'jvm_impl')
  final JvmImpl? jvmImpl;
  final Package? package;
  final Installer? installer;
  @MappableField(key: 'download_count')
  final int? downloadCount;
  @MappableField(key: 'scm_ref')
  final String? scmRef;
  @MappableField(key: 'Project')
  final Project? project;


  static Binary fromJson(Map<String, dynamic> json) => BinaryMapper.ensureInitialized().decodeMap<Binary>(json);

}

