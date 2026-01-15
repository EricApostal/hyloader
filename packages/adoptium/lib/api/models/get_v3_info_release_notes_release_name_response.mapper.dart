// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'get_v3_info_release_notes_release_name_response.dart';

class GetV3InfoReleaseNotesReleaseNameResponseMapper
    extends ClassMapperBase<GetV3InfoReleaseNotesReleaseNameResponse> {
  GetV3InfoReleaseNotesReleaseNameResponseMapper._();

  static GetV3InfoReleaseNotesReleaseNameResponseMapper? _instance;
  static GetV3InfoReleaseNotesReleaseNameResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = GetV3InfoReleaseNotesReleaseNameResponseMapper._(),
      );
      VersionDataMapper.ensureInitialized();
      ReleaseNoteMapper.ensureInitialized();
      AdoptiumVendorMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GetV3InfoReleaseNotesReleaseNameResponse';

  static VersionData _$versionData(
    GetV3InfoReleaseNotesReleaseNameResponse v,
  ) => v.versionData;
  static const Field<GetV3InfoReleaseNotesReleaseNameResponse, VersionData>
  _f$versionData = Field('versionData', _$versionData, key: r'version_data');
  static String _$id(GetV3InfoReleaseNotesReleaseNameResponse v) => v.id;
  static const Field<GetV3InfoReleaseNotesReleaseNameResponse, String> _f$id =
      Field('id', _$id);
  static String _$releaseName(GetV3InfoReleaseNotesReleaseNameResponse v) =>
      v.releaseName;
  static const Field<GetV3InfoReleaseNotesReleaseNameResponse, String>
  _f$releaseName = Field('releaseName', _$releaseName, key: r'release_name');
  static List<ReleaseNote> _$releaseNotes(
    GetV3InfoReleaseNotesReleaseNameResponse v,
  ) => v.releaseNotes;
  static const Field<
    GetV3InfoReleaseNotesReleaseNameResponse,
    List<ReleaseNote>
  >
  _f$releaseNotes = Field(
    'releaseNotes',
    _$releaseNotes,
    key: r'release_notes',
  );
  static AdoptiumVendor? _$vendor(GetV3InfoReleaseNotesReleaseNameResponse v) =>
      v.vendor;
  static const Field<GetV3InfoReleaseNotesReleaseNameResponse, AdoptiumVendor>
  _f$vendor = Field('vendor', _$vendor, opt: true);

  @override
  final MappableFields<GetV3InfoReleaseNotesReleaseNameResponse> fields =
      const {
        #versionData: _f$versionData,
        #id: _f$id,
        #releaseName: _f$releaseName,
        #releaseNotes: _f$releaseNotes,
        #vendor: _f$vendor,
      };

  static GetV3InfoReleaseNotesReleaseNameResponse _instantiate(
    DecodingData data,
  ) {
    return GetV3InfoReleaseNotesReleaseNameResponse(
      versionData: data.dec(_f$versionData),
      id: data.dec(_f$id),
      releaseName: data.dec(_f$releaseName),
      releaseNotes: data.dec(_f$releaseNotes),
      vendor: data.dec(_f$vendor),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static GetV3InfoReleaseNotesReleaseNameResponse fromMap(
    Map<String, dynamic> map,
  ) {
    return ensureInitialized()
        .decodeMap<GetV3InfoReleaseNotesReleaseNameResponse>(map);
  }

  static GetV3InfoReleaseNotesReleaseNameResponse fromJson(String json) {
    return ensureInitialized()
        .decodeJson<GetV3InfoReleaseNotesReleaseNameResponse>(json);
  }
}

mixin GetV3InfoReleaseNotesReleaseNameResponseMappable {
  String toJson() {
    return GetV3InfoReleaseNotesReleaseNameResponseMapper.ensureInitialized()
        .encodeJson<GetV3InfoReleaseNotesReleaseNameResponse>(
          this as GetV3InfoReleaseNotesReleaseNameResponse,
        );
  }

  Map<String, dynamic> toMap() {
    return GetV3InfoReleaseNotesReleaseNameResponseMapper.ensureInitialized()
        .encodeMap<GetV3InfoReleaseNotesReleaseNameResponse>(
          this as GetV3InfoReleaseNotesReleaseNameResponse,
        );
  }

  GetV3InfoReleaseNotesReleaseNameResponseCopyWith<
    GetV3InfoReleaseNotesReleaseNameResponse,
    GetV3InfoReleaseNotesReleaseNameResponse,
    GetV3InfoReleaseNotesReleaseNameResponse
  >
  get copyWith =>
      _GetV3InfoReleaseNotesReleaseNameResponseCopyWithImpl<
        GetV3InfoReleaseNotesReleaseNameResponse,
        GetV3InfoReleaseNotesReleaseNameResponse
      >(this as GetV3InfoReleaseNotesReleaseNameResponse, $identity, $identity);
  @override
  String toString() {
    return GetV3InfoReleaseNotesReleaseNameResponseMapper.ensureInitialized()
        .stringifyValue(this as GetV3InfoReleaseNotesReleaseNameResponse);
  }

  @override
  bool operator ==(Object other) {
    return GetV3InfoReleaseNotesReleaseNameResponseMapper.ensureInitialized()
        .equalsValue(this as GetV3InfoReleaseNotesReleaseNameResponse, other);
  }

  @override
  int get hashCode {
    return GetV3InfoReleaseNotesReleaseNameResponseMapper.ensureInitialized()
        .hashValue(this as GetV3InfoReleaseNotesReleaseNameResponse);
  }
}

extension GetV3InfoReleaseNotesReleaseNameResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GetV3InfoReleaseNotesReleaseNameResponse, $Out> {
  GetV3InfoReleaseNotesReleaseNameResponseCopyWith<
    $R,
    GetV3InfoReleaseNotesReleaseNameResponse,
    $Out
  >
  get $asGetV3InfoReleaseNotesReleaseNameResponse => $base.as(
    (v, t, t2) =>
        _GetV3InfoReleaseNotesReleaseNameResponseCopyWithImpl<$R, $Out>(
          v,
          t,
          t2,
        ),
  );
}

abstract class GetV3InfoReleaseNotesReleaseNameResponseCopyWith<
  $R,
  $In extends GetV3InfoReleaseNotesReleaseNameResponse,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  VersionDataCopyWith<$R, VersionData, VersionData> get versionData;
  ListCopyWith<
    $R,
    ReleaseNote,
    ReleaseNoteCopyWith<$R, ReleaseNote, ReleaseNote>
  >
  get releaseNotes;
  $R call({
    VersionData? versionData,
    String? id,
    String? releaseName,
    List<ReleaseNote>? releaseNotes,
    AdoptiumVendor? vendor,
  });
  GetV3InfoReleaseNotesReleaseNameResponseCopyWith<$R2, $In, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _GetV3InfoReleaseNotesReleaseNameResponseCopyWithImpl<$R, $Out>
    extends
        ClassCopyWithBase<$R, GetV3InfoReleaseNotesReleaseNameResponse, $Out>
    implements
        GetV3InfoReleaseNotesReleaseNameResponseCopyWith<
          $R,
          GetV3InfoReleaseNotesReleaseNameResponse,
          $Out
        > {
  _GetV3InfoReleaseNotesReleaseNameResponseCopyWithImpl(
    super.value,
    super.then,
    super.then2,
  );

  @override
  late final ClassMapperBase<GetV3InfoReleaseNotesReleaseNameResponse> $mapper =
      GetV3InfoReleaseNotesReleaseNameResponseMapper.ensureInitialized();
  @override
  VersionDataCopyWith<$R, VersionData, VersionData> get versionData =>
      $value.versionData.copyWith.$chain((v) => call(versionData: v));
  @override
  ListCopyWith<
    $R,
    ReleaseNote,
    ReleaseNoteCopyWith<$R, ReleaseNote, ReleaseNote>
  >
  get releaseNotes => ListCopyWith(
    $value.releaseNotes,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(releaseNotes: v),
  );
  @override
  $R call({
    VersionData? versionData,
    String? id,
    String? releaseName,
    List<ReleaseNote>? releaseNotes,
    Object? vendor = $none,
  }) => $apply(
    FieldCopyWithData({
      if (versionData != null) #versionData: versionData,
      if (id != null) #id: id,
      if (releaseName != null) #releaseName: releaseName,
      if (releaseNotes != null) #releaseNotes: releaseNotes,
      if (vendor != $none) #vendor: vendor,
    }),
  );
  @override
  GetV3InfoReleaseNotesReleaseNameResponse $make(CopyWithData data) =>
      GetV3InfoReleaseNotesReleaseNameResponse(
        versionData: data.get(#versionData, or: $value.versionData),
        id: data.get(#id, or: $value.id),
        releaseName: data.get(#releaseName, or: $value.releaseName),
        releaseNotes: data.get(#releaseNotes, or: $value.releaseNotes),
        vendor: data.get(#vendor, or: $value.vendor),
      );

  @override
  GetV3InfoReleaseNotesReleaseNameResponseCopyWith<
    $R2,
    GetV3InfoReleaseNotesReleaseNameResponse,
    $Out2
  >
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _GetV3InfoReleaseNotesReleaseNameResponseCopyWithImpl<$R2, $Out2>(
        $value,
        $cast,
        t,
      );
}

