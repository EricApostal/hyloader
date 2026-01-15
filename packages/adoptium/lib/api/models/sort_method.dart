// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

part 'sort_method.mapper.dart';

/// DEFAULT sort order is by: version, then date, then name, then id. DATE sorts by date, then version, then name, then id.
@MappableEnum(defaultValue: 'unknown')
enum SortMethod {
  /// The name has been replaced because it contains a keyword. Original name: `DEFAULT`.
  @MappableValue('DEFAULT') 
  valueDefault,

  @MappableValue('DATE') 
  date,

  @MappableValue('unknown') 
  unknown;

  @override
  String toString() => toValue().toString();

  /// Returns all defined enum values excluding the unknown value.
  static List<SortMethod> get $valuesDefined => values.where((value) => value != SortMethod.unknown).toList();
}
