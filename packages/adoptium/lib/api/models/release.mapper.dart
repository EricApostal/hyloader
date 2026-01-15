// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'release.dart';

class ReleaseMapper extends ClassMapperBase<Release> {
  ReleaseMapper._();

  static ReleaseMapper? _instance;
  static ReleaseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ReleaseMapper._());
      BinaryMapper.ensureInitialized();
      ReleaseTypeMapper.ensureInitialized();
      VersionDataMapper.ensureInitialized();
      AdoptiumVendorMapper.ensureInitialized();
      SourcePackageMapper.ensureInitialized();
      ReleaseNotesPackageMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Release';

  static String _$id(Release v) => v.id;
  static const Field<Release, String> _f$id = Field('id', _$id);
  static String _$releaseLink(Release v) => v.releaseLink;
  static const Field<Release, String> _f$releaseLink = Field(
    'releaseLink',
    _$releaseLink,
    key: r'release_link',
  );
  static String _$releaseName(Release v) => v.releaseName;
  static const Field<Release, String> _f$releaseName = Field(
    'releaseName',
    _$releaseName,
    key: r'release_name',
  );
  static String _$timestamp(Release v) => v.timestamp;
  static const Field<Release, String> _f$timestamp = Field(
    'timestamp',
    _$timestamp,
  );
  static String _$updatedAt(Release v) => v.updatedAt;
  static const Field<Release, String> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
  );
  static List<Binary> _$binaries(Release v) => v.binaries;
  static const Field<Release, List<Binary>> _f$binaries = Field(
    'binaries',
    _$binaries,
  );
  static ReleaseType _$releaseType(Release v) => v.releaseType;
  static const Field<Release, ReleaseType> _f$releaseType = Field(
    'releaseType',
    _$releaseType,
    key: r'release_type',
  );
  static VersionData _$versionData(Release v) => v.versionData;
  static const Field<Release, VersionData> _f$versionData = Field(
    'versionData',
    _$versionData,
    key: r'version_data',
  );
  static int? _$downloadCount(Release v) => v.downloadCount;
  static const Field<Release, int> _f$downloadCount = Field(
    'downloadCount',
    _$downloadCount,
    key: r'download_count',
    opt: true,
  );
  static AdoptiumVendor? _$vendor(Release v) => v.vendor;
  static const Field<Release, AdoptiumVendor> _f$vendor = Field(
    'vendor',
    _$vendor,
    opt: true,
  );
  static SourcePackage? _$source(Release v) => v.source;
  static const Field<Release, SourcePackage> _f$source = Field(
    'source',
    _$source,
    opt: true,
  );
  static ReleaseNotesPackage? _$releaseNotes(Release v) => v.releaseNotes;
  static const Field<Release, ReleaseNotesPackage> _f$releaseNotes = Field(
    'releaseNotes',
    _$releaseNotes,
    key: r'release_notes',
    opt: true,
  );
  static String? _$aqavitResultsLink(Release v) => v.aqavitResultsLink;
  static const Field<Release, String> _f$aqavitResultsLink = Field(
    'aqavitResultsLink',
    _$aqavitResultsLink,
    key: r'aqavit_results_link',
    opt: true,
  );

  @override
  final MappableFields<Release> fields = const {
    #id: _f$id,
    #releaseLink: _f$releaseLink,
    #releaseName: _f$releaseName,
    #timestamp: _f$timestamp,
    #updatedAt: _f$updatedAt,
    #binaries: _f$binaries,
    #releaseType: _f$releaseType,
    #versionData: _f$versionData,
    #downloadCount: _f$downloadCount,
    #vendor: _f$vendor,
    #source: _f$source,
    #releaseNotes: _f$releaseNotes,
    #aqavitResultsLink: _f$aqavitResultsLink,
  };

  static Release _instantiate(DecodingData data) {
    return Release(
      id: data.dec(_f$id),
      releaseLink: data.dec(_f$releaseLink),
      releaseName: data.dec(_f$releaseName),
      timestamp: data.dec(_f$timestamp),
      updatedAt: data.dec(_f$updatedAt),
      binaries: data.dec(_f$binaries),
      releaseType: data.dec(_f$releaseType),
      versionData: data.dec(_f$versionData),
      downloadCount: data.dec(_f$downloadCount),
      vendor: data.dec(_f$vendor),
      source: data.dec(_f$source),
      releaseNotes: data.dec(_f$releaseNotes),
      aqavitResultsLink: data.dec(_f$aqavitResultsLink),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Release fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Release>(map);
  }

  static Release fromJson(String json) {
    return ensureInitialized().decodeJson<Release>(json);
  }
}

mixin ReleaseMappable {
  String toJson() {
    return ReleaseMapper.ensureInitialized().encodeJson<Release>(
      this as Release,
    );
  }

  Map<String, dynamic> toMap() {
    return ReleaseMapper.ensureInitialized().encodeMap<Release>(
      this as Release,
    );
  }

  ReleaseCopyWith<Release, Release, Release> get copyWith =>
      _ReleaseCopyWithImpl<Release, Release>(
        this as Release,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ReleaseMapper.ensureInitialized().stringifyValue(this as Release);
  }

  @override
  bool operator ==(Object other) {
    return ReleaseMapper.ensureInitialized().equalsValue(
      this as Release,
      other,
    );
  }

  @override
  int get hashCode {
    return ReleaseMapper.ensureInitialized().hashValue(this as Release);
  }
}

extension ReleaseValueCopy<$R, $Out> on ObjectCopyWith<$R, Release, $Out> {
  ReleaseCopyWith<$R, Release, $Out> get $asRelease =>
      $base.as((v, t, t2) => _ReleaseCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ReleaseCopyWith<$R, $In extends Release, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Binary, BinaryCopyWith<$R, Binary, Binary>> get binaries;
  VersionDataCopyWith<$R, VersionData, VersionData> get versionData;
  SourcePackageCopyWith<$R, SourcePackage, SourcePackage>? get source;
  ReleaseNotesPackageCopyWith<$R, ReleaseNotesPackage, ReleaseNotesPackage>?
  get releaseNotes;
  $R call({
    String? id,
    String? releaseLink,
    String? releaseName,
    String? timestamp,
    String? updatedAt,
    List<Binary>? binaries,
    ReleaseType? releaseType,
    VersionData? versionData,
    int? downloadCount,
    AdoptiumVendor? vendor,
    SourcePackage? source,
    ReleaseNotesPackage? releaseNotes,
    String? aqavitResultsLink,
  });
  ReleaseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ReleaseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Release, $Out>
    implements ReleaseCopyWith<$R, Release, $Out> {
  _ReleaseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Release> $mapper =
      ReleaseMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Binary, BinaryCopyWith<$R, Binary, Binary>> get binaries =>
      ListCopyWith(
        $value.binaries,
        (v, t) => v.copyWith.$chain(t),
        (v) => call(binaries: v),
      );
  @override
  VersionDataCopyWith<$R, VersionData, VersionData> get versionData =>
      $value.versionData.copyWith.$chain((v) => call(versionData: v));
  @override
  SourcePackageCopyWith<$R, SourcePackage, SourcePackage>? get source =>
      $value.source?.copyWith.$chain((v) => call(source: v));
  @override
  ReleaseNotesPackageCopyWith<$R, ReleaseNotesPackage, ReleaseNotesPackage>?
  get releaseNotes =>
      $value.releaseNotes?.copyWith.$chain((v) => call(releaseNotes: v));
  @override
  $R call({
    String? id,
    String? releaseLink,
    String? releaseName,
    String? timestamp,
    String? updatedAt,
    List<Binary>? binaries,
    ReleaseType? releaseType,
    VersionData? versionData,
    Object? downloadCount = $none,
    Object? vendor = $none,
    Object? source = $none,
    Object? releaseNotes = $none,
    Object? aqavitResultsLink = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (releaseLink != null) #releaseLink: releaseLink,
      if (releaseName != null) #releaseName: releaseName,
      if (timestamp != null) #timestamp: timestamp,
      if (updatedAt != null) #updatedAt: updatedAt,
      if (binaries != null) #binaries: binaries,
      if (releaseType != null) #releaseType: releaseType,
      if (versionData != null) #versionData: versionData,
      if (downloadCount != $none) #downloadCount: downloadCount,
      if (vendor != $none) #vendor: vendor,
      if (source != $none) #source: source,
      if (releaseNotes != $none) #releaseNotes: releaseNotes,
      if (aqavitResultsLink != $none) #aqavitResultsLink: aqavitResultsLink,
    }),
  );
  @override
  Release $make(CopyWithData data) => Release(
    id: data.get(#id, or: $value.id),
    releaseLink: data.get(#releaseLink, or: $value.releaseLink),
    releaseName: data.get(#releaseName, or: $value.releaseName),
    timestamp: data.get(#timestamp, or: $value.timestamp),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
    binaries: data.get(#binaries, or: $value.binaries),
    releaseType: data.get(#releaseType, or: $value.releaseType),
    versionData: data.get(#versionData, or: $value.versionData),
    downloadCount: data.get(#downloadCount, or: $value.downloadCount),
    vendor: data.get(#vendor, or: $value.vendor),
    source: data.get(#source, or: $value.source),
    releaseNotes: data.get(#releaseNotes, or: $value.releaseNotes),
    aqavitResultsLink: data.get(
      #aqavitResultsLink,
      or: $value.aqavitResultsLink,
    ),
  );

  @override
  ReleaseCopyWith<$R2, Release, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ReleaseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

