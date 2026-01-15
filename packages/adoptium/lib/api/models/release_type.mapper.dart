// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'release_type.dart';

class ReleaseTypeMapper extends EnumMapper<ReleaseType> {
  ReleaseTypeMapper._();

  static ReleaseTypeMapper? _instance;
  static ReleaseTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ReleaseTypeMapper._());
    }
    return _instance!;
  }

  static ReleaseType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ReleaseType decode(dynamic value) {
    switch (value) {
      case 'ga':
        return ReleaseType.ga;
      case 'ea':
        return ReleaseType.ea;
      case 'unknown':
        return ReleaseType.unknown;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ReleaseType self) {
    switch (self) {
      case ReleaseType.ga:
        return 'ga';
      case ReleaseType.ea:
        return 'ea';
      case ReleaseType.unknown:
        return 'unknown';
    }
  }
}

extension ReleaseTypeMapperExtension on ReleaseType {
  dynamic toValue() {
    ReleaseTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ReleaseType>(this);
  }
}

