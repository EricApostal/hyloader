// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

part 'architecture.mapper.dart';

@MappableEnum(defaultValue: 'unknown')
enum Architecture {
  @MappableValue('x64') 
  x64,

  @MappableValue('x86') 
  x86,

  @MappableValue('x32') 
  x32,

  @MappableValue('ppc64') 
  ppc64,

  @MappableValue('ppc64le') 
  ppc64le,

  @MappableValue('s390x') 
  s390x,

  @MappableValue('aarch64') 
  aarch64,

  @MappableValue('arm') 
  arm,

  @MappableValue('sparcv9') 
  sparcv9,

  @MappableValue('riscv64') 
  riscv64,

  @MappableValue('unknown') 
  unknown;

  @override
  String toString() => toValue().toString();

  /// Returns all defined enum values excluding the unknown value.
  static List<Architecture> get $valuesDefined => values.where((value) => value != Architecture.unknown).toList();
}
