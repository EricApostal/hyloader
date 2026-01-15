// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'sort_method.dart';

class SortMethodMapper extends EnumMapper<SortMethod> {
  SortMethodMapper._();

  static SortMethodMapper? _instance;
  static SortMethodMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SortMethodMapper._());
    }
    return _instance!;
  }

  static SortMethod fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  SortMethod decode(dynamic value) {
    switch (value) {
      case 'DEFAULT':
        return SortMethod.valueDefault;
      case 'DATE':
        return SortMethod.date;
      case 'unknown':
        return SortMethod.unknown;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(SortMethod self) {
    switch (self) {
      case SortMethod.valueDefault:
        return 'DEFAULT';
      case SortMethod.date:
        return 'DATE';
      case SortMethod.unknown:
        return 'unknown';
    }
  }
}

extension SortMethodMapperExtension on SortMethod {
  dynamic toValue() {
    SortMethodMapper.ensureInitialized();
    return MapperContainer.globals.toValue<SortMethod>(this);
  }
}

