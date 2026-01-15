// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'binary_asset_view.dart';

class BinaryAssetViewMapper extends ClassMapperBase<BinaryAssetView> {
  BinaryAssetViewMapper._();

  static BinaryAssetViewMapper? _instance;
  static BinaryAssetViewMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BinaryAssetViewMapper._());
      BinaryMapper.ensureInitialized();
      AdoptiumVendorMapper.ensureInitialized();
      VersionDataMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BinaryAssetView';

  static String _$releaseName(BinaryAssetView v) => v.releaseName;
  static const Field<BinaryAssetView, String> _f$releaseName = Field(
    'releaseName',
    _$releaseName,
    key: r'release_name',
  );
  static String _$releaseLink(BinaryAssetView v) => v.releaseLink;
  static const Field<BinaryAssetView, String> _f$releaseLink = Field(
    'releaseLink',
    _$releaseLink,
    key: r'release_link',
  );
  static Binary? _$binary(BinaryAssetView v) => v.binary;
  static const Field<BinaryAssetView, Binary> _f$binary = Field(
    'binary',
    _$binary,
    opt: true,
  );
  static AdoptiumVendor? _$vendor(BinaryAssetView v) => v.vendor;
  static const Field<BinaryAssetView, AdoptiumVendor> _f$vendor = Field(
    'vendor',
    _$vendor,
    opt: true,
  );
  static VersionData? _$version(BinaryAssetView v) => v.version;
  static const Field<BinaryAssetView, VersionData> _f$version = Field(
    'version',
    _$version,
    opt: true,
  );

  @override
  final MappableFields<BinaryAssetView> fields = const {
    #releaseName: _f$releaseName,
    #releaseLink: _f$releaseLink,
    #binary: _f$binary,
    #vendor: _f$vendor,
    #version: _f$version,
  };

  static BinaryAssetView _instantiate(DecodingData data) {
    return BinaryAssetView(
      releaseName: data.dec(_f$releaseName),
      releaseLink: data.dec(_f$releaseLink),
      binary: data.dec(_f$binary),
      vendor: data.dec(_f$vendor),
      version: data.dec(_f$version),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static BinaryAssetView fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BinaryAssetView>(map);
  }

  static BinaryAssetView fromJson(String json) {
    return ensureInitialized().decodeJson<BinaryAssetView>(json);
  }
}

mixin BinaryAssetViewMappable {
  String toJson() {
    return BinaryAssetViewMapper.ensureInitialized()
        .encodeJson<BinaryAssetView>(this as BinaryAssetView);
  }

  Map<String, dynamic> toMap() {
    return BinaryAssetViewMapper.ensureInitialized().encodeMap<BinaryAssetView>(
      this as BinaryAssetView,
    );
  }

  BinaryAssetViewCopyWith<BinaryAssetView, BinaryAssetView, BinaryAssetView>
  get copyWith =>
      _BinaryAssetViewCopyWithImpl<BinaryAssetView, BinaryAssetView>(
        this as BinaryAssetView,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return BinaryAssetViewMapper.ensureInitialized().stringifyValue(
      this as BinaryAssetView,
    );
  }

  @override
  bool operator ==(Object other) {
    return BinaryAssetViewMapper.ensureInitialized().equalsValue(
      this as BinaryAssetView,
      other,
    );
  }

  @override
  int get hashCode {
    return BinaryAssetViewMapper.ensureInitialized().hashValue(
      this as BinaryAssetView,
    );
  }
}

extension BinaryAssetViewValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BinaryAssetView, $Out> {
  BinaryAssetViewCopyWith<$R, BinaryAssetView, $Out> get $asBinaryAssetView =>
      $base.as((v, t, t2) => _BinaryAssetViewCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class BinaryAssetViewCopyWith<$R, $In extends BinaryAssetView, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  BinaryCopyWith<$R, Binary, Binary>? get binary;
  VersionDataCopyWith<$R, VersionData, VersionData>? get version;
  $R call({
    String? releaseName,
    String? releaseLink,
    Binary? binary,
    AdoptiumVendor? vendor,
    VersionData? version,
  });
  BinaryAssetViewCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _BinaryAssetViewCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BinaryAssetView, $Out>
    implements BinaryAssetViewCopyWith<$R, BinaryAssetView, $Out> {
  _BinaryAssetViewCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BinaryAssetView> $mapper =
      BinaryAssetViewMapper.ensureInitialized();
  @override
  BinaryCopyWith<$R, Binary, Binary>? get binary =>
      $value.binary?.copyWith.$chain((v) => call(binary: v));
  @override
  VersionDataCopyWith<$R, VersionData, VersionData>? get version =>
      $value.version?.copyWith.$chain((v) => call(version: v));
  @override
  $R call({
    String? releaseName,
    String? releaseLink,
    Object? binary = $none,
    Object? vendor = $none,
    Object? version = $none,
  }) => $apply(
    FieldCopyWithData({
      if (releaseName != null) #releaseName: releaseName,
      if (releaseLink != null) #releaseLink: releaseLink,
      if (binary != $none) #binary: binary,
      if (vendor != $none) #vendor: vendor,
      if (version != $none) #version: version,
    }),
  );
  @override
  BinaryAssetView $make(CopyWithData data) => BinaryAssetView(
    releaseName: data.get(#releaseName, or: $value.releaseName),
    releaseLink: data.get(#releaseLink, or: $value.releaseLink),
    binary: data.get(#binary, or: $value.binary),
    vendor: data.get(#vendor, or: $value.vendor),
    version: data.get(#version, or: $value.version),
  );

  @override
  BinaryAssetViewCopyWith<$R2, BinaryAssetView, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _BinaryAssetViewCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

