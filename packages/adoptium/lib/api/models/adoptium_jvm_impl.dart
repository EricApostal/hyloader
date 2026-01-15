// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

part 'adoptium_jvm_impl.mapper.dart';

@MappableEnum(defaultValue: 'unknown')
enum AdoptiumJvmImpl {
  @MappableValue('hotspot') 
  hotspot,

  @MappableValue('unknown') 
  unknown;

  @override
  String toString() => toValue().toString();

  /// Returns all defined enum values excluding the unknown value.
  static List<AdoptiumJvmImpl> get $valuesDefined => values.where((value) => value != AdoptiumJvmImpl.unknown).toList();
}
