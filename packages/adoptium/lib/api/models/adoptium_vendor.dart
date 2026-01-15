// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

part 'adoptium_vendor.mapper.dart';

@MappableEnum(defaultValue: 'unknown')
enum AdoptiumVendor {
  @MappableValue('eclipse') 
  eclipse,

  @MappableValue('unknown') 
  unknown;

  @override
  String toString() => toValue().toString();

  /// Returns all defined enum values excluding the unknown value.
  static List<AdoptiumVendor> get $valuesDefined => values.where((value) => value != AdoptiumVendor.unknown).toList();
}
