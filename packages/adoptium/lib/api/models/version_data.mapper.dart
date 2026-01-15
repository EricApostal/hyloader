// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'version_data.dart';

class VersionDataMapper extends ClassMapperBase<VersionData> {
  VersionDataMapper._();

  static VersionDataMapper? _instance;
  static VersionDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VersionDataMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'VersionData';

  static String _$semver(VersionData v) => v.semver;
  static const Field<VersionData, String> _f$semver = Field('semver', _$semver);
  static String _$openjdkVersion(VersionData v) => v.openjdkVersion;
  static const Field<VersionData, String> _f$openjdkVersion = Field(
    'openjdkVersion',
    _$openjdkVersion,
    key: r'openjdk_version',
  );
  static int? _$major(VersionData v) => v.major;
  static const Field<VersionData, int> _f$major = Field(
    'major',
    _$major,
    opt: true,
  );
  static int? _$minor(VersionData v) => v.minor;
  static const Field<VersionData, int> _f$minor = Field(
    'minor',
    _$minor,
    opt: true,
  );
  static int? _$security(VersionData v) => v.security;
  static const Field<VersionData, int> _f$security = Field(
    'security',
    _$security,
    opt: true,
  );
  static int? _$patch(VersionData v) => v.patch;
  static const Field<VersionData, int> _f$patch = Field(
    'patch',
    _$patch,
    opt: true,
  );
  static String? _$pre(VersionData v) => v.pre;
  static const Field<VersionData, String> _f$pre = Field(
    'pre',
    _$pre,
    opt: true,
  );
  static int? _$adoptBuildNumber(VersionData v) => v.adoptBuildNumber;
  static const Field<VersionData, int> _f$adoptBuildNumber = Field(
    'adoptBuildNumber',
    _$adoptBuildNumber,
    key: r'adopt_build_number',
    opt: true,
  );
  static int? _$build(VersionData v) => v.build;
  static const Field<VersionData, int> _f$build = Field(
    'build',
    _$build,
    opt: true,
  );
  static String? _$optional(VersionData v) => v.optional;
  static const Field<VersionData, String> _f$optional = Field(
    'optional',
    _$optional,
    opt: true,
  );

  @override
  final MappableFields<VersionData> fields = const {
    #semver: _f$semver,
    #openjdkVersion: _f$openjdkVersion,
    #major: _f$major,
    #minor: _f$minor,
    #security: _f$security,
    #patch: _f$patch,
    #pre: _f$pre,
    #adoptBuildNumber: _f$adoptBuildNumber,
    #build: _f$build,
    #optional: _f$optional,
  };

  static VersionData _instantiate(DecodingData data) {
    return VersionData(
      semver: data.dec(_f$semver),
      openjdkVersion: data.dec(_f$openjdkVersion),
      major: data.dec(_f$major),
      minor: data.dec(_f$minor),
      security: data.dec(_f$security),
      patch: data.dec(_f$patch),
      pre: data.dec(_f$pre),
      adoptBuildNumber: data.dec(_f$adoptBuildNumber),
      build: data.dec(_f$build),
      optional: data.dec(_f$optional),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static VersionData fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VersionData>(map);
  }

  static VersionData fromJson(String json) {
    return ensureInitialized().decodeJson<VersionData>(json);
  }
}

mixin VersionDataMappable {
  String toJson() {
    return VersionDataMapper.ensureInitialized().encodeJson<VersionData>(
      this as VersionData,
    );
  }

  Map<String, dynamic> toMap() {
    return VersionDataMapper.ensureInitialized().encodeMap<VersionData>(
      this as VersionData,
    );
  }

  VersionDataCopyWith<VersionData, VersionData, VersionData> get copyWith =>
      _VersionDataCopyWithImpl<VersionData, VersionData>(
        this as VersionData,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return VersionDataMapper.ensureInitialized().stringifyValue(
      this as VersionData,
    );
  }

  @override
  bool operator ==(Object other) {
    return VersionDataMapper.ensureInitialized().equalsValue(
      this as VersionData,
      other,
    );
  }

  @override
  int get hashCode {
    return VersionDataMapper.ensureInitialized().hashValue(this as VersionData);
  }
}

extension VersionDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VersionData, $Out> {
  VersionDataCopyWith<$R, VersionData, $Out> get $asVersionData =>
      $base.as((v, t, t2) => _VersionDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class VersionDataCopyWith<$R, $In extends VersionData, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? semver,
    String? openjdkVersion,
    int? major,
    int? minor,
    int? security,
    int? patch,
    String? pre,
    int? adoptBuildNumber,
    int? build,
    String? optional,
  });
  VersionDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _VersionDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VersionData, $Out>
    implements VersionDataCopyWith<$R, VersionData, $Out> {
  _VersionDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VersionData> $mapper =
      VersionDataMapper.ensureInitialized();
  @override
  $R call({
    String? semver,
    String? openjdkVersion,
    Object? major = $none,
    Object? minor = $none,
    Object? security = $none,
    Object? patch = $none,
    Object? pre = $none,
    Object? adoptBuildNumber = $none,
    Object? build = $none,
    Object? optional = $none,
  }) => $apply(
    FieldCopyWithData({
      if (semver != null) #semver: semver,
      if (openjdkVersion != null) #openjdkVersion: openjdkVersion,
      if (major != $none) #major: major,
      if (minor != $none) #minor: minor,
      if (security != $none) #security: security,
      if (patch != $none) #patch: patch,
      if (pre != $none) #pre: pre,
      if (adoptBuildNumber != $none) #adoptBuildNumber: adoptBuildNumber,
      if (build != $none) #build: build,
      if (optional != $none) #optional: optional,
    }),
  );
  @override
  VersionData $make(CopyWithData data) => VersionData(
    semver: data.get(#semver, or: $value.semver),
    openjdkVersion: data.get(#openjdkVersion, or: $value.openjdkVersion),
    major: data.get(#major, or: $value.major),
    minor: data.get(#minor, or: $value.minor),
    security: data.get(#security, or: $value.security),
    patch: data.get(#patch, or: $value.patch),
    pre: data.get(#pre, or: $value.pre),
    adoptBuildNumber: data.get(#adoptBuildNumber, or: $value.adoptBuildNumber),
    build: data.get(#build, or: $value.build),
    optional: data.get(#optional, or: $value.optional),
  );

  @override
  VersionDataCopyWith<$R2, VersionData, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _VersionDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

