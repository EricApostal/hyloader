// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'heap_size.dart';

class HeapSizeMapper extends EnumMapper<HeapSize> {
  HeapSizeMapper._();

  static HeapSizeMapper? _instance;
  static HeapSizeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HeapSizeMapper._());
    }
    return _instance!;
  }

  static HeapSize fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  HeapSize decode(dynamic value) {
    switch (value) {
      case 'normal':
        return HeapSize.normal;
      case 'large':
        return HeapSize.large;
      case 'unknown':
        return HeapSize.unknown;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(HeapSize self) {
    switch (self) {
      case HeapSize.normal:
        return 'normal';
      case HeapSize.large:
        return 'large';
      case HeapSize.unknown:
        return 'unknown';
    }
  }
}

extension HeapSizeMapperExtension on HeapSize {
  dynamic toValue() {
    HeapSizeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<HeapSize>(this);
  }
}

