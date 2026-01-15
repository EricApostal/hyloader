// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'adoptium_jvm_impl.dart';

class AdoptiumJvmImplMapper extends EnumMapper<AdoptiumJvmImpl> {
  AdoptiumJvmImplMapper._();

  static AdoptiumJvmImplMapper? _instance;
  static AdoptiumJvmImplMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AdoptiumJvmImplMapper._());
    }
    return _instance!;
  }

  static AdoptiumJvmImpl fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  AdoptiumJvmImpl decode(dynamic value) {
    switch (value) {
      case 'hotspot':
        return AdoptiumJvmImpl.hotspot;
      case 'unknown':
        return AdoptiumJvmImpl.unknown;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(AdoptiumJvmImpl self) {
    switch (self) {
      case AdoptiumJvmImpl.hotspot:
        return 'hotspot';
      case AdoptiumJvmImpl.unknown:
        return 'unknown';
    }
  }
}

extension AdoptiumJvmImplMapperExtension on AdoptiumJvmImpl {
  dynamic toValue() {
    AdoptiumJvmImplMapper.ensureInitialized();
    return MapperContainer.globals.toValue<AdoptiumJvmImpl>(this);
  }
}

