// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'get_v3_info_release_versions_response.dart';

class GetV3InfoReleaseVersionsResponseMapper
    extends ClassMapperBase<GetV3InfoReleaseVersionsResponse> {
  GetV3InfoReleaseVersionsResponseMapper._();

  static GetV3InfoReleaseVersionsResponseMapper? _instance;
  static GetV3InfoReleaseVersionsResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = GetV3InfoReleaseVersionsResponseMapper._(),
      );
      VersionDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GetV3InfoReleaseVersionsResponse';

  static List<VersionData> _$versions(GetV3InfoReleaseVersionsResponse v) =>
      v.versions;
  static const Field<GetV3InfoReleaseVersionsResponse, List<VersionData>>
  _f$versions = Field('versions', _$versions);

  @override
  final MappableFields<GetV3InfoReleaseVersionsResponse> fields = const {
    #versions: _f$versions,
  };

  static GetV3InfoReleaseVersionsResponse _instantiate(DecodingData data) {
    return GetV3InfoReleaseVersionsResponse(versions: data.dec(_f$versions));
  }

  @override
  final Function instantiate = _instantiate;

  static GetV3InfoReleaseVersionsResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GetV3InfoReleaseVersionsResponse>(map);
  }

  static GetV3InfoReleaseVersionsResponse fromJson(String json) {
    return ensureInitialized().decodeJson<GetV3InfoReleaseVersionsResponse>(
      json,
    );
  }
}

mixin GetV3InfoReleaseVersionsResponseMappable {
  String toJson() {
    return GetV3InfoReleaseVersionsResponseMapper.ensureInitialized()
        .encodeJson<GetV3InfoReleaseVersionsResponse>(
          this as GetV3InfoReleaseVersionsResponse,
        );
  }

  Map<String, dynamic> toMap() {
    return GetV3InfoReleaseVersionsResponseMapper.ensureInitialized()
        .encodeMap<GetV3InfoReleaseVersionsResponse>(
          this as GetV3InfoReleaseVersionsResponse,
        );
  }

  GetV3InfoReleaseVersionsResponseCopyWith<
    GetV3InfoReleaseVersionsResponse,
    GetV3InfoReleaseVersionsResponse,
    GetV3InfoReleaseVersionsResponse
  >
  get copyWith =>
      _GetV3InfoReleaseVersionsResponseCopyWithImpl<
        GetV3InfoReleaseVersionsResponse,
        GetV3InfoReleaseVersionsResponse
      >(this as GetV3InfoReleaseVersionsResponse, $identity, $identity);
  @override
  String toString() {
    return GetV3InfoReleaseVersionsResponseMapper.ensureInitialized()
        .stringifyValue(this as GetV3InfoReleaseVersionsResponse);
  }

  @override
  bool operator ==(Object other) {
    return GetV3InfoReleaseVersionsResponseMapper.ensureInitialized()
        .equalsValue(this as GetV3InfoReleaseVersionsResponse, other);
  }

  @override
  int get hashCode {
    return GetV3InfoReleaseVersionsResponseMapper.ensureInitialized().hashValue(
      this as GetV3InfoReleaseVersionsResponse,
    );
  }
}

extension GetV3InfoReleaseVersionsResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GetV3InfoReleaseVersionsResponse, $Out> {
  GetV3InfoReleaseVersionsResponseCopyWith<
    $R,
    GetV3InfoReleaseVersionsResponse,
    $Out
  >
  get $asGetV3InfoReleaseVersionsResponse => $base.as(
    (v, t, t2) =>
        _GetV3InfoReleaseVersionsResponseCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class GetV3InfoReleaseVersionsResponseCopyWith<
  $R,
  $In extends GetV3InfoReleaseVersionsResponse,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    VersionData,
    VersionDataCopyWith<$R, VersionData, VersionData>
  >
  get versions;
  $R call({List<VersionData>? versions});
  GetV3InfoReleaseVersionsResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _GetV3InfoReleaseVersionsResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GetV3InfoReleaseVersionsResponse, $Out>
    implements
        GetV3InfoReleaseVersionsResponseCopyWith<
          $R,
          GetV3InfoReleaseVersionsResponse,
          $Out
        > {
  _GetV3InfoReleaseVersionsResponseCopyWithImpl(
    super.value,
    super.then,
    super.then2,
  );

  @override
  late final ClassMapperBase<GetV3InfoReleaseVersionsResponse> $mapper =
      GetV3InfoReleaseVersionsResponseMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    VersionData,
    VersionDataCopyWith<$R, VersionData, VersionData>
  >
  get versions => ListCopyWith(
    $value.versions,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(versions: v),
  );
  @override
  $R call({List<VersionData>? versions}) =>
      $apply(FieldCopyWithData({if (versions != null) #versions: versions}));
  @override
  GetV3InfoReleaseVersionsResponse $make(CopyWithData data) =>
      GetV3InfoReleaseVersionsResponse(
        versions: data.get(#versions, or: $value.versions),
      );

  @override
  GetV3InfoReleaseVersionsResponseCopyWith<
    $R2,
    GetV3InfoReleaseVersionsResponse,
    $Out2
  >
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _GetV3InfoReleaseVersionsResponseCopyWithImpl<$R2, $Out2>(
        $value,
        $cast,
        t,
      );
}

