// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

part 'release_type.mapper.dart';

@MappableEnum(defaultValue: 'unknown')
enum ReleaseType {
  @MappableValue('ga') 
  ga,

  @MappableValue('ea') 
  ea,

  @MappableValue('unknown') 
  unknown;

  @override
  String toString() => toValue().toString();

  /// Returns all defined enum values excluding the unknown value.
  static List<ReleaseType> get $valuesDefined => values.where((value) => value != ReleaseType.unknown).toList();
}
