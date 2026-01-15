// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

part 'project.mapper.dart';

/// Project
@MappableEnum(defaultValue: 'unknown')
enum Project {
  @MappableValue('jdk') 
  jdk,

  @MappableValue('valhalla') 
  valhalla,

  @MappableValue('metropolis') 
  metropolis,

  @MappableValue('jfr') 
  jfr,

  @MappableValue('shenandoah') 
  shenandoah,

  @MappableValue('unknown') 
  unknown;

  @override
  String toString() => toValue().toString();

  /// Returns all defined enum values excluding the unknown value.
  static List<Project> get $valuesDefined => values.where((value) => value != Project.unknown).toList();
}
