// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'c_lib.dart';

class CLibMapper extends EnumMapper<CLib> {
  CLibMapper._();

  static CLibMapper? _instance;
  static CLibMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CLibMapper._());
    }
    return _instance!;
  }

  static CLib fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  CLib decode(dynamic value) {
    switch (value) {
      case 'musl':
        return CLib.musl;
      case 'glibc':
        return CLib.glibc;
      case 'unknown':
        return CLib.unknown;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(CLib self) {
    switch (self) {
      case CLib.musl:
        return 'musl';
      case CLib.glibc:
        return 'glibc';
      case CLib.unknown:
        return 'unknown';
    }
  }
}

extension CLibMapperExtension on CLib {
  dynamic toValue() {
    CLibMapper.ensureInitialized();
    return MapperContainer.globals.toValue<CLib>(this);
  }
}

