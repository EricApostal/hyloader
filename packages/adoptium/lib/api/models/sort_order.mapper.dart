// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'sort_order.dart';

class SortOrderMapper extends EnumMapper<SortOrder> {
  SortOrderMapper._();

  static SortOrderMapper? _instance;
  static SortOrderMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SortOrderMapper._());
    }
    return _instance!;
  }

  static SortOrder fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  SortOrder decode(dynamic value) {
    switch (value) {
      case 'ASC':
        return SortOrder.asc;
      case 'DESC':
        return SortOrder.desc;
      case 'unknown':
        return SortOrder.unknown;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(SortOrder self) {
    switch (self) {
      case SortOrder.asc:
        return 'ASC';
      case SortOrder.desc:
        return 'DESC';
      case SortOrder.unknown:
        return 'unknown';
    }
  }
}

extension SortOrderMapperExtension on SortOrder {
  dynamic toValue() {
    SortOrderMapper.ensureInitialized();
    return MapperContainer.globals.toValue<SortOrder>(this);
  }
}

