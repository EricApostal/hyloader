// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'image_type.dart';

class ImageTypeMapper extends EnumMapper<ImageType> {
  ImageTypeMapper._();

  static ImageTypeMapper? _instance;
  static ImageTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ImageTypeMapper._());
    }
    return _instance!;
  }

  static ImageType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ImageType decode(dynamic value) {
    switch (value) {
      case 'jdk':
        return ImageType.jdk;
      case 'jre':
        return ImageType.jre;
      case 'testimage':
        return ImageType.testimage;
      case 'debugimage':
        return ImageType.debugimage;
      case 'staticlibs':
        return ImageType.staticlibs;
      case 'sources':
        return ImageType.sources;
      case 'sbom':
        return ImageType.sbom;
      case 'jmods':
        return ImageType.jmods;
      case 'unknown':
        return ImageType.unknown;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ImageType self) {
    switch (self) {
      case ImageType.jdk:
        return 'jdk';
      case ImageType.jre:
        return 'jre';
      case ImageType.testimage:
        return 'testimage';
      case ImageType.debugimage:
        return 'debugimage';
      case ImageType.staticlibs:
        return 'staticlibs';
      case ImageType.sources:
        return 'sources';
      case ImageType.sbom:
        return 'sbom';
      case ImageType.jmods:
        return 'jmods';
      case ImageType.unknown:
        return 'unknown';
    }
  }
}

extension ImageTypeMapperExtension on ImageType {
  dynamic toValue() {
    ImageTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ImageType>(this);
  }
}

