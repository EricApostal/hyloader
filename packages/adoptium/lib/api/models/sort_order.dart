// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

part 'sort_order.mapper.dart';

@MappableEnum(defaultValue: 'unknown')
enum SortOrder {
  @MappableValue('ASC') 
  asc,

  @MappableValue('DESC') 
  desc,

  @MappableValue('unknown') 
  unknown;

  @override
  String toString() => toValue().toString();

  /// Returns all defined enum values excluding the unknown value.
  static List<SortOrder> get $valuesDefined => values.where((value) => value != SortOrder.unknown).toList();
}
