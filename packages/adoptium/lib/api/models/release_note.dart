// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dart_mappable/dart_mappable.dart';

part 'release_note.mapper.dart';

@MappableClass()
class ReleaseNote with ReleaseNoteMappable {
  const ReleaseNote({
    required this.id,
    this.title,
    this.priority,
    this.component,
    this.subcomponent,
    this.link,
    this.type,
    this.backportOf,
  });
  final String id;
  final String? title;
  final String? priority;
  final String? component;
  final String? subcomponent;
  final String? link;
  final String? type;
  final String? backportOf;


  static ReleaseNote fromJson(Map<String, dynamic> json) => ReleaseNoteMapper.ensureInitialized().decodeMap<ReleaseNote>(json);

}

