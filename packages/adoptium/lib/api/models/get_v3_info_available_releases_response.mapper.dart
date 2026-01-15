// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'get_v3_info_available_releases_response.dart';

class GetV3InfoAvailableReleasesResponseMapper
    extends ClassMapperBase<GetV3InfoAvailableReleasesResponse> {
  GetV3InfoAvailableReleasesResponseMapper._();

  static GetV3InfoAvailableReleasesResponseMapper? _instance;
  static GetV3InfoAvailableReleasesResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = GetV3InfoAvailableReleasesResponseMapper._(),
      );
    }
    return _instance!;
  }

  @override
  final String id = 'GetV3InfoAvailableReleasesResponse';

  static List<int> _$availableReleases(GetV3InfoAvailableReleasesResponse v) =>
      v.availableReleases;
  static const Field<GetV3InfoAvailableReleasesResponse, List<int>>
  _f$availableReleases = Field(
    'availableReleases',
    _$availableReleases,
    key: r'available_releases',
  );
  static List<int> _$availableLtsReleases(
    GetV3InfoAvailableReleasesResponse v,
  ) => v.availableLtsReleases;
  static const Field<GetV3InfoAvailableReleasesResponse, List<int>>
  _f$availableLtsReleases = Field(
    'availableLtsReleases',
    _$availableLtsReleases,
    key: r'available_lts_releases',
  );
  static int? _$mostRecentLts(GetV3InfoAvailableReleasesResponse v) =>
      v.mostRecentLts;
  static const Field<GetV3InfoAvailableReleasesResponse, int> _f$mostRecentLts =
      Field(
        'mostRecentLts',
        _$mostRecentLts,
        key: r'most_recent_lts',
        opt: true,
      );
  static int? _$mostRecentFeatureRelease(
    GetV3InfoAvailableReleasesResponse v,
  ) => v.mostRecentFeatureRelease;
  static const Field<GetV3InfoAvailableReleasesResponse, int>
  _f$mostRecentFeatureRelease = Field(
    'mostRecentFeatureRelease',
    _$mostRecentFeatureRelease,
    key: r'most_recent_feature_release',
    opt: true,
  );
  static int? _$mostRecentFeatureVersion(
    GetV3InfoAvailableReleasesResponse v,
  ) => v.mostRecentFeatureVersion;
  static const Field<GetV3InfoAvailableReleasesResponse, int>
  _f$mostRecentFeatureVersion = Field(
    'mostRecentFeatureVersion',
    _$mostRecentFeatureVersion,
    key: r'most_recent_feature_version',
    opt: true,
  );
  static int? _$tipVersion(GetV3InfoAvailableReleasesResponse v) =>
      v.tipVersion;
  static const Field<GetV3InfoAvailableReleasesResponse, int> _f$tipVersion =
      Field('tipVersion', _$tipVersion, key: r'tip_version', opt: true);

  @override
  final MappableFields<GetV3InfoAvailableReleasesResponse> fields = const {
    #availableReleases: _f$availableReleases,
    #availableLtsReleases: _f$availableLtsReleases,
    #mostRecentLts: _f$mostRecentLts,
    #mostRecentFeatureRelease: _f$mostRecentFeatureRelease,
    #mostRecentFeatureVersion: _f$mostRecentFeatureVersion,
    #tipVersion: _f$tipVersion,
  };

  static GetV3InfoAvailableReleasesResponse _instantiate(DecodingData data) {
    return GetV3InfoAvailableReleasesResponse(
      availableReleases: data.dec(_f$availableReleases),
      availableLtsReleases: data.dec(_f$availableLtsReleases),
      mostRecentLts: data.dec(_f$mostRecentLts),
      mostRecentFeatureRelease: data.dec(_f$mostRecentFeatureRelease),
      mostRecentFeatureVersion: data.dec(_f$mostRecentFeatureVersion),
      tipVersion: data.dec(_f$tipVersion),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static GetV3InfoAvailableReleasesResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GetV3InfoAvailableReleasesResponse>(
      map,
    );
  }

  static GetV3InfoAvailableReleasesResponse fromJson(String json) {
    return ensureInitialized().decodeJson<GetV3InfoAvailableReleasesResponse>(
      json,
    );
  }
}

mixin GetV3InfoAvailableReleasesResponseMappable {
  String toJson() {
    return GetV3InfoAvailableReleasesResponseMapper.ensureInitialized()
        .encodeJson<GetV3InfoAvailableReleasesResponse>(
          this as GetV3InfoAvailableReleasesResponse,
        );
  }

  Map<String, dynamic> toMap() {
    return GetV3InfoAvailableReleasesResponseMapper.ensureInitialized()
        .encodeMap<GetV3InfoAvailableReleasesResponse>(
          this as GetV3InfoAvailableReleasesResponse,
        );
  }

  GetV3InfoAvailableReleasesResponseCopyWith<
    GetV3InfoAvailableReleasesResponse,
    GetV3InfoAvailableReleasesResponse,
    GetV3InfoAvailableReleasesResponse
  >
  get copyWith =>
      _GetV3InfoAvailableReleasesResponseCopyWithImpl<
        GetV3InfoAvailableReleasesResponse,
        GetV3InfoAvailableReleasesResponse
      >(this as GetV3InfoAvailableReleasesResponse, $identity, $identity);
  @override
  String toString() {
    return GetV3InfoAvailableReleasesResponseMapper.ensureInitialized()
        .stringifyValue(this as GetV3InfoAvailableReleasesResponse);
  }

  @override
  bool operator ==(Object other) {
    return GetV3InfoAvailableReleasesResponseMapper.ensureInitialized()
        .equalsValue(this as GetV3InfoAvailableReleasesResponse, other);
  }

  @override
  int get hashCode {
    return GetV3InfoAvailableReleasesResponseMapper.ensureInitialized()
        .hashValue(this as GetV3InfoAvailableReleasesResponse);
  }
}

extension GetV3InfoAvailableReleasesResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GetV3InfoAvailableReleasesResponse, $Out> {
  GetV3InfoAvailableReleasesResponseCopyWith<
    $R,
    GetV3InfoAvailableReleasesResponse,
    $Out
  >
  get $asGetV3InfoAvailableReleasesResponse => $base.as(
    (v, t, t2) =>
        _GetV3InfoAvailableReleasesResponseCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class GetV3InfoAvailableReleasesResponseCopyWith<
  $R,
  $In extends GetV3InfoAvailableReleasesResponse,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get availableReleases;
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get availableLtsReleases;
  $R call({
    List<int>? availableReleases,
    List<int>? availableLtsReleases,
    int? mostRecentLts,
    int? mostRecentFeatureRelease,
    int? mostRecentFeatureVersion,
    int? tipVersion,
  });
  GetV3InfoAvailableReleasesResponseCopyWith<$R2, $In, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _GetV3InfoAvailableReleasesResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GetV3InfoAvailableReleasesResponse, $Out>
    implements
        GetV3InfoAvailableReleasesResponseCopyWith<
          $R,
          GetV3InfoAvailableReleasesResponse,
          $Out
        > {
  _GetV3InfoAvailableReleasesResponseCopyWithImpl(
    super.value,
    super.then,
    super.then2,
  );

  @override
  late final ClassMapperBase<GetV3InfoAvailableReleasesResponse> $mapper =
      GetV3InfoAvailableReleasesResponseMapper.ensureInitialized();
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get availableReleases =>
      ListCopyWith(
        $value.availableReleases,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(availableReleases: v),
      );
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>>
  get availableLtsReleases => ListCopyWith(
    $value.availableLtsReleases,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(availableLtsReleases: v),
  );
  @override
  $R call({
    List<int>? availableReleases,
    List<int>? availableLtsReleases,
    Object? mostRecentLts = $none,
    Object? mostRecentFeatureRelease = $none,
    Object? mostRecentFeatureVersion = $none,
    Object? tipVersion = $none,
  }) => $apply(
    FieldCopyWithData({
      if (availableReleases != null) #availableReleases: availableReleases,
      if (availableLtsReleases != null)
        #availableLtsReleases: availableLtsReleases,
      if (mostRecentLts != $none) #mostRecentLts: mostRecentLts,
      if (mostRecentFeatureRelease != $none)
        #mostRecentFeatureRelease: mostRecentFeatureRelease,
      if (mostRecentFeatureVersion != $none)
        #mostRecentFeatureVersion: mostRecentFeatureVersion,
      if (tipVersion != $none) #tipVersion: tipVersion,
    }),
  );
  @override
  GetV3InfoAvailableReleasesResponse $make(CopyWithData data) =>
      GetV3InfoAvailableReleasesResponse(
        availableReleases: data.get(
          #availableReleases,
          or: $value.availableReleases,
        ),
        availableLtsReleases: data.get(
          #availableLtsReleases,
          or: $value.availableLtsReleases,
        ),
        mostRecentLts: data.get(#mostRecentLts, or: $value.mostRecentLts),
        mostRecentFeatureRelease: data.get(
          #mostRecentFeatureRelease,
          or: $value.mostRecentFeatureRelease,
        ),
        mostRecentFeatureVersion: data.get(
          #mostRecentFeatureVersion,
          or: $value.mostRecentFeatureVersion,
        ),
        tipVersion: data.get(#tipVersion, or: $value.tipVersion),
      );

  @override
  GetV3InfoAvailableReleasesResponseCopyWith<
    $R2,
    GetV3InfoAvailableReleasesResponse,
    $Out2
  >
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _GetV3InfoAvailableReleasesResponseCopyWithImpl<$R2, $Out2>(
        $value,
        $cast,
        t,
      );
}

