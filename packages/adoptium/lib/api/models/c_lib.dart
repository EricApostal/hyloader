// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

part 'c_lib.mapper.dart';

@MappableEnum(defaultValue: 'unknown')
enum CLib {
  @MappableValue('musl') 
  musl,

  @MappableValue('glibc') 
  glibc,

  @MappableValue('unknown') 
  unknown;

  @override
  String toString() => toValue().toString();

  /// Returns all defined enum values excluding the unknown value.
  static List<CLib> get $valuesDefined => values.where((value) => value != CLib.unknown).toList();
}
