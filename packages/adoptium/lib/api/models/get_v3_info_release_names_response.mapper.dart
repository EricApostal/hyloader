// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'get_v3_info_release_names_response.dart';

class GetV3InfoReleaseNamesResponseMapper
    extends ClassMapperBase<GetV3InfoReleaseNamesResponse> {
  GetV3InfoReleaseNamesResponseMapper._();

  static GetV3InfoReleaseNamesResponseMapper? _instance;
  static GetV3InfoReleaseNamesResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = GetV3InfoReleaseNamesResponseMapper._(),
      );
    }
    return _instance!;
  }

  @override
  final String id = 'GetV3InfoReleaseNamesResponse';

  static List<String> _$releases(GetV3InfoReleaseNamesResponse v) => v.releases;
  static const Field<GetV3InfoReleaseNamesResponse, List<String>> _f$releases =
      Field('releases', _$releases);

  @override
  final MappableFields<GetV3InfoReleaseNamesResponse> fields = const {
    #releases: _f$releases,
  };

  static GetV3InfoReleaseNamesResponse _instantiate(DecodingData data) {
    return GetV3InfoReleaseNamesResponse(releases: data.dec(_f$releases));
  }

  @override
  final Function instantiate = _instantiate;

  static GetV3InfoReleaseNamesResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GetV3InfoReleaseNamesResponse>(map);
  }

  static GetV3InfoReleaseNamesResponse fromJson(String json) {
    return ensureInitialized().decodeJson<GetV3InfoReleaseNamesResponse>(json);
  }
}

mixin GetV3InfoReleaseNamesResponseMappable {
  String toJson() {
    return GetV3InfoReleaseNamesResponseMapper.ensureInitialized()
        .encodeJson<GetV3InfoReleaseNamesResponse>(
          this as GetV3InfoReleaseNamesResponse,
        );
  }

  Map<String, dynamic> toMap() {
    return GetV3InfoReleaseNamesResponseMapper.ensureInitialized()
        .encodeMap<GetV3InfoReleaseNamesResponse>(
          this as GetV3InfoReleaseNamesResponse,
        );
  }

  GetV3InfoReleaseNamesResponseCopyWith<
    GetV3InfoReleaseNamesResponse,
    GetV3InfoReleaseNamesResponse,
    GetV3InfoReleaseNamesResponse
  >
  get copyWith =>
      _GetV3InfoReleaseNamesResponseCopyWithImpl<
        GetV3InfoReleaseNamesResponse,
        GetV3InfoReleaseNamesResponse
      >(this as GetV3InfoReleaseNamesResponse, $identity, $identity);
  @override
  String toString() {
    return GetV3InfoReleaseNamesResponseMapper.ensureInitialized()
        .stringifyValue(this as GetV3InfoReleaseNamesResponse);
  }

  @override
  bool operator ==(Object other) {
    return GetV3InfoReleaseNamesResponseMapper.ensureInitialized().equalsValue(
      this as GetV3InfoReleaseNamesResponse,
      other,
    );
  }

  @override
  int get hashCode {
    return GetV3InfoReleaseNamesResponseMapper.ensureInitialized().hashValue(
      this as GetV3InfoReleaseNamesResponse,
    );
  }
}

extension GetV3InfoReleaseNamesResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GetV3InfoReleaseNamesResponse, $Out> {
  GetV3InfoReleaseNamesResponseCopyWith<$R, GetV3InfoReleaseNamesResponse, $Out>
  get $asGetV3InfoReleaseNamesResponse => $base.as(
    (v, t, t2) =>
        _GetV3InfoReleaseNamesResponseCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class GetV3InfoReleaseNamesResponseCopyWith<
  $R,
  $In extends GetV3InfoReleaseNamesResponse,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get releases;
  $R call({List<String>? releases});
  GetV3InfoReleaseNamesResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _GetV3InfoReleaseNamesResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GetV3InfoReleaseNamesResponse, $Out>
    implements
        GetV3InfoReleaseNamesResponseCopyWith<
          $R,
          GetV3InfoReleaseNamesResponse,
          $Out
        > {
  _GetV3InfoReleaseNamesResponseCopyWithImpl(
    super.value,
    super.then,
    super.then2,
  );

  @override
  late final ClassMapperBase<GetV3InfoReleaseNamesResponse> $mapper =
      GetV3InfoReleaseNamesResponseMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get releases =>
      ListCopyWith(
        $value.releases,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(releases: v),
      );
  @override
  $R call({List<String>? releases}) =>
      $apply(FieldCopyWithData({if (releases != null) #releases: releases}));
  @override
  GetV3InfoReleaseNamesResponse $make(CopyWithData data) =>
      GetV3InfoReleaseNamesResponse(
        releases: data.get(#releases, or: $value.releases),
      );

  @override
  GetV3InfoReleaseNamesResponseCopyWith<
    $R2,
    GetV3InfoReleaseNamesResponse,
    $Out2
  >
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _GetV3InfoReleaseNamesResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

