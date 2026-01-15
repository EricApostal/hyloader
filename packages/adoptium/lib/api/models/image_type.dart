// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

part 'image_type.mapper.dart';

@MappableEnum(defaultValue: 'unknown')
enum ImageType {
  @MappableValue('jdk') 
  jdk,

  @MappableValue('jre') 
  jre,

  @MappableValue('testimage') 
  testimage,

  @MappableValue('debugimage') 
  debugimage,

  @MappableValue('staticlibs') 
  staticlibs,

  @MappableValue('sources') 
  sources,

  @MappableValue('sbom') 
  sbom,

  @MappableValue('jmods') 
  jmods,

  @MappableValue('unknown') 
  unknown;

  @override
  String toString() => toValue().toString();

  /// Returns all defined enum values excluding the unknown value.
  static List<ImageType> get $valuesDefined => values.where((value) => value != ImageType.unknown).toList();
}
