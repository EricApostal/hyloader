// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

part 'operating_system.mapper.dart';

@MappableEnum(defaultValue: 'unknown')
enum OperatingSystem {
  @MappableValue('linux') 
  linux,

  @MappableValue('windows') 
  windows,

  @MappableValue('mac') 
  mac,

  @MappableValue('solaris') 
  solaris,

  @MappableValue('aix') 
  aix,

  @MappableValue('alpine-linux') 
  alpineLinux,

  @MappableValue('unknown') 
  unknown;

  @override
  String toString() => toValue().toString();

  /// Returns all defined enum values excluding the unknown value.
  static List<OperatingSystem> get $valuesDefined => values.where((value) => value != OperatingSystem.unknown).toList();
}
