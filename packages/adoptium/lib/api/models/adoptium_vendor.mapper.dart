// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'adoptium_vendor.dart';

class AdoptiumVendorMapper extends EnumMapper<AdoptiumVendor> {
  AdoptiumVendorMapper._();

  static AdoptiumVendorMapper? _instance;
  static AdoptiumVendorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AdoptiumVendorMapper._());
    }
    return _instance!;
  }

  static AdoptiumVendor fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  AdoptiumVendor decode(dynamic value) {
    switch (value) {
      case 'eclipse':
        return AdoptiumVendor.eclipse;
      case 'unknown':
        return AdoptiumVendor.unknown;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(AdoptiumVendor self) {
    switch (self) {
      case AdoptiumVendor.eclipse:
        return 'eclipse';
      case AdoptiumVendor.unknown:
        return 'unknown';
    }
  }
}

extension AdoptiumVendorMapperExtension on AdoptiumVendor {
  dynamic toValue() {
    AdoptiumVendorMapper.ensureInitialized();
    return MapperContainer.globals.toValue<AdoptiumVendor>(this);
  }
}

