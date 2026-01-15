// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'types_manager.g.dart';

@RestApi()
abstract class TypesManager {
  factory TypesManager(Dio dio, {String? baseUrl}) = _TypesManager;

  /// Returns names of architectures
  @GET('/v3/types/architectures')
  Future<List<String>> getArchitectures({
    @Extras() Map<String, dynamic>? extras,
  });

  /// Returns names of operating systems
  @GET('/v3/types/operating_systems')
  Future<List<String>> getOperatingSystems({
    @Extras() Map<String, dynamic>? extras,
  });
}
