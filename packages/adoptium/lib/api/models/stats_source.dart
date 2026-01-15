// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

part 'stats_source.mapper.dart';

@MappableEnum(defaultValue: 'unknown')
enum StatsSource {
  @MappableValue('github') 
  github,

  @MappableValue('dockerhub') 
  dockerhub,

  @MappableValue('all') 
  all,

  @MappableValue('unknown') 
  unknown;

  @override
  String toString() => toValue().toString();

  /// Returns all defined enum values excluding the unknown value.
  static List<StatsSource> get $valuesDefined => values.where((value) => value != StatsSource.unknown).toList();
}
