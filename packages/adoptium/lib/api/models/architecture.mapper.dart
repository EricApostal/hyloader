// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'architecture.dart';

class ArchitectureMapper extends EnumMapper<Architecture> {
  ArchitectureMapper._();

  static ArchitectureMapper? _instance;
  static ArchitectureMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ArchitectureMapper._());
    }
    return _instance!;
  }

  static Architecture fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Architecture decode(dynamic value) {
    switch (value) {
      case 'x64':
        return Architecture.x64;
      case 'x86':
        return Architecture.x86;
      case 'x32':
        return Architecture.x32;
      case 'ppc64':
        return Architecture.ppc64;
      case 'ppc64le':
        return Architecture.ppc64le;
      case 's390x':
        return Architecture.s390x;
      case 'aarch64':
        return Architecture.aarch64;
      case 'arm':
        return Architecture.arm;
      case 'sparcv9':
        return Architecture.sparcv9;
      case 'riscv64':
        return Architecture.riscv64;
      case 'unknown':
        return Architecture.unknown;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Architecture self) {
    switch (self) {
      case Architecture.x64:
        return 'x64';
      case Architecture.x86:
        return 'x86';
      case Architecture.x32:
        return 'x32';
      case Architecture.ppc64:
        return 'ppc64';
      case Architecture.ppc64le:
        return 'ppc64le';
      case Architecture.s390x:
        return 's390x';
      case Architecture.aarch64:
        return 'aarch64';
      case Architecture.arm:
        return 'arm';
      case Architecture.sparcv9:
        return 'sparcv9';
      case Architecture.riscv64:
        return 'riscv64';
      case Architecture.unknown:
        return 'unknown';
    }
  }
}

extension ArchitectureMapperExtension on Architecture {
  dynamic toValue() {
    ArchitectureMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Architecture>(this);
  }
}

