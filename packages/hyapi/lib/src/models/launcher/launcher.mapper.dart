// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'launcher.dart';

class LauncherDataMapper extends ClassMapperBase<LauncherData> {
  LauncherDataMapper._();

  static LauncherDataMapper? _instance;
  static LauncherDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LauncherDataMapper._());
      PatchTrackMapper.ensureInitialized();
      PatchlineMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'LauncherData';

  static String _$owner(LauncherData v) => v.owner;
  static const Field<LauncherData, String> _f$owner = Field('owner', _$owner);
  static Map<PatchTrack, Patchline> _$patchlines(LauncherData v) =>
      v.patchlines;
  static const Field<LauncherData, Map<PatchTrack, Patchline>> _f$patchlines =
      Field('patchlines', _$patchlines);
  static DateTime? _$eulaAcceptedAt(LauncherData v) => v.eulaAcceptedAt;
  static const Field<LauncherData, DateTime> _f$eulaAcceptedAt = Field(
    'eulaAcceptedAt',
    _$eulaAcceptedAt,
    opt: true,
  );

  @override
  final MappableFields<LauncherData> fields = const {
    #owner: _f$owner,
    #patchlines: _f$patchlines,
    #eulaAcceptedAt: _f$eulaAcceptedAt,
  };

  static LauncherData _instantiate(DecodingData data) {
    return LauncherData(
      owner: data.dec(_f$owner),
      patchlines: data.dec(_f$patchlines),
      eulaAcceptedAt: data.dec(_f$eulaAcceptedAt),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static LauncherData fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LauncherData>(map);
  }

  static LauncherData fromJson(String json) {
    return ensureInitialized().decodeJson<LauncherData>(json);
  }
}

mixin LauncherDataMappable {
  String toJson() {
    return LauncherDataMapper.ensureInitialized().encodeJson<LauncherData>(
      this as LauncherData,
    );
  }

  Map<String, dynamic> toMap() {
    return LauncherDataMapper.ensureInitialized().encodeMap<LauncherData>(
      this as LauncherData,
    );
  }

  LauncherDataCopyWith<LauncherData, LauncherData, LauncherData> get copyWith =>
      _LauncherDataCopyWithImpl<LauncherData, LauncherData>(
        this as LauncherData,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return LauncherDataMapper.ensureInitialized().stringifyValue(
      this as LauncherData,
    );
  }

  @override
  bool operator ==(Object other) {
    return LauncherDataMapper.ensureInitialized().equalsValue(
      this as LauncherData,
      other,
    );
  }

  @override
  int get hashCode {
    return LauncherDataMapper.ensureInitialized().hashValue(
      this as LauncherData,
    );
  }
}

extension LauncherDataValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LauncherData, $Out> {
  LauncherDataCopyWith<$R, LauncherData, $Out> get $asLauncherData =>
      $base.as((v, t, t2) => _LauncherDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class LauncherDataCopyWith<$R, $In extends LauncherData, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<
    $R,
    PatchTrack,
    Patchline,
    PatchlineCopyWith<$R, Patchline, Patchline>
  >
  get patchlines;
  $R call({
    String? owner,
    Map<PatchTrack, Patchline>? patchlines,
    DateTime? eulaAcceptedAt,
  });
  LauncherDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LauncherDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LauncherData, $Out>
    implements LauncherDataCopyWith<$R, LauncherData, $Out> {
  _LauncherDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LauncherData> $mapper =
      LauncherDataMapper.ensureInitialized();
  @override
  MapCopyWith<
    $R,
    PatchTrack,
    Patchline,
    PatchlineCopyWith<$R, Patchline, Patchline>
  >
  get patchlines => MapCopyWith(
    $value.patchlines,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(patchlines: v),
  );
  @override
  $R call({
    String? owner,
    Map<PatchTrack, Patchline>? patchlines,
    Object? eulaAcceptedAt = $none,
  }) => $apply(
    FieldCopyWithData({
      if (owner != null) #owner: owner,
      if (patchlines != null) #patchlines: patchlines,
      if (eulaAcceptedAt != $none) #eulaAcceptedAt: eulaAcceptedAt,
    }),
  );
  @override
  LauncherData $make(CopyWithData data) => LauncherData(
    owner: data.get(#owner, or: $value.owner),
    patchlines: data.get(#patchlines, or: $value.patchlines),
    eulaAcceptedAt: data.get(#eulaAcceptedAt, or: $value.eulaAcceptedAt),
  );

  @override
  LauncherDataCopyWith<$R2, LauncherData, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _LauncherDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

