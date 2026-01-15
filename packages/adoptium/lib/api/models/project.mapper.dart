// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'project.dart';

class ProjectMapper extends EnumMapper<Project> {
  ProjectMapper._();

  static ProjectMapper? _instance;
  static ProjectMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProjectMapper._());
    }
    return _instance!;
  }

  static Project fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Project decode(dynamic value) {
    switch (value) {
      case 'jdk':
        return Project.jdk;
      case 'valhalla':
        return Project.valhalla;
      case 'metropolis':
        return Project.metropolis;
      case 'jfr':
        return Project.jfr;
      case 'shenandoah':
        return Project.shenandoah;
      case 'unknown':
        return Project.unknown;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Project self) {
    switch (self) {
      case Project.jdk:
        return 'jdk';
      case Project.valhalla:
        return 'valhalla';
      case Project.metropolis:
        return 'metropolis';
      case Project.jfr:
        return 'jfr';
      case Project.shenandoah:
        return 'shenandoah';
      case Project.unknown:
        return 'unknown';
    }
  }
}

extension ProjectMapperExtension on Project {
  dynamic toValue() {
    ProjectMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Project>(this);
  }
}

