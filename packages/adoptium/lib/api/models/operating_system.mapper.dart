// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'operating_system.dart';

class OperatingSystemMapper extends EnumMapper<OperatingSystem> {
  OperatingSystemMapper._();

  static OperatingSystemMapper? _instance;
  static OperatingSystemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OperatingSystemMapper._());
    }
    return _instance!;
  }

  static OperatingSystem fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  OperatingSystem decode(dynamic value) {
    switch (value) {
      case 'linux':
        return OperatingSystem.linux;
      case 'windows':
        return OperatingSystem.windows;
      case 'mac':
        return OperatingSystem.mac;
      case 'solaris':
        return OperatingSystem.solaris;
      case 'aix':
        return OperatingSystem.aix;
      case 'alpine-linux':
        return OperatingSystem.alpineLinux;
      case 'unknown':
        return OperatingSystem.unknown;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(OperatingSystem self) {
    switch (self) {
      case OperatingSystem.linux:
        return 'linux';
      case OperatingSystem.windows:
        return 'windows';
      case OperatingSystem.mac:
        return 'mac';
      case OperatingSystem.solaris:
        return 'solaris';
      case OperatingSystem.aix:
        return 'aix';
      case OperatingSystem.alpineLinux:
        return 'alpine-linux';
      case OperatingSystem.unknown:
        return 'unknown';
    }
  }
}

extension OperatingSystemMapperExtension on OperatingSystem {
  dynamic toValue() {
    OperatingSystemMapper.ensureInitialized();
    return MapperContainer.globals.toValue<OperatingSystem>(this);
  }
}

