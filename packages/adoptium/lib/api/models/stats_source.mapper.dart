// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'stats_source.dart';

class StatsSourceMapper extends EnumMapper<StatsSource> {
  StatsSourceMapper._();

  static StatsSourceMapper? _instance;
  static StatsSourceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = StatsSourceMapper._());
    }
    return _instance!;
  }

  static StatsSource fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  StatsSource decode(dynamic value) {
    switch (value) {
      case 'github':
        return StatsSource.github;
      case 'dockerhub':
        return StatsSource.dockerhub;
      case 'all':
        return StatsSource.all;
      case 'unknown':
        return StatsSource.unknown;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(StatsSource self) {
    switch (self) {
      case StatsSource.github:
        return 'github';
      case StatsSource.dockerhub:
        return 'dockerhub';
      case StatsSource.all:
        return 'all';
      case StatsSource.unknown:
        return 'unknown';
    }
  }
}

extension StatsSourceMapperExtension on StatsSource {
  dynamic toValue() {
    StatsSourceMapper.ensureInitialized();
    return MapperContainer.globals.toValue<StatsSource>(this);
  }
}

