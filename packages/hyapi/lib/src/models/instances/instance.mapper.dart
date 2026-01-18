// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'instance.dart';

class HytaleInstanceMapper extends ClassMapperBase<HytaleInstance> {
  HytaleInstanceMapper._();

  static HytaleInstanceMapper? _instance;
  static HytaleInstanceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HytaleInstanceMapper._());
      PatchTrackMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'HytaleInstance';

  static String _$id(HytaleInstance v) => v.id;
  static const Field<HytaleInstance, String> _f$id = Field('id', _$id);
  static String _$name(HytaleInstance v) => v.name;
  static const Field<HytaleInstance, String> _f$name = Field('name', _$name);
  static PatchTrack _$track(HytaleInstance v) => v.track;
  static const Field<HytaleInstance, PatchTrack> _f$track = Field(
    'track',
    _$track,
  );
  static String _$version(HytaleInstance v) => v.version;
  static const Field<HytaleInstance, String> _f$version = Field(
    'version',
    _$version,
  );

  @override
  final MappableFields<HytaleInstance> fields = const {
    #id: _f$id,
    #name: _f$name,
    #track: _f$track,
    #version: _f$version,
  };

  static HytaleInstance _instantiate(DecodingData data) {
    return HytaleInstance(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      track: data.dec(_f$track),
      version: data.dec(_f$version),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static HytaleInstance fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<HytaleInstance>(map);
  }

  static HytaleInstance fromJson(String json) {
    return ensureInitialized().decodeJson<HytaleInstance>(json);
  }
}

mixin HytaleInstanceMappable {
  String toJson() {
    return HytaleInstanceMapper.ensureInitialized().encodeJson<HytaleInstance>(
      this as HytaleInstance,
    );
  }

  Map<String, dynamic> toMap() {
    return HytaleInstanceMapper.ensureInitialized().encodeMap<HytaleInstance>(
      this as HytaleInstance,
    );
  }

  HytaleInstanceCopyWith<HytaleInstance, HytaleInstance, HytaleInstance>
  get copyWith => _HytaleInstanceCopyWithImpl<HytaleInstance, HytaleInstance>(
    this as HytaleInstance,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return HytaleInstanceMapper.ensureInitialized().stringifyValue(
      this as HytaleInstance,
    );
  }

  @override
  bool operator ==(Object other) {
    return HytaleInstanceMapper.ensureInitialized().equalsValue(
      this as HytaleInstance,
      other,
    );
  }

  @override
  int get hashCode {
    return HytaleInstanceMapper.ensureInitialized().hashValue(
      this as HytaleInstance,
    );
  }
}

extension HytaleInstanceValueCopy<$R, $Out>
    on ObjectCopyWith<$R, HytaleInstance, $Out> {
  HytaleInstanceCopyWith<$R, HytaleInstance, $Out> get $asHytaleInstance =>
      $base.as((v, t, t2) => _HytaleInstanceCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class HytaleInstanceCopyWith<$R, $In extends HytaleInstance, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, String? name, PatchTrack? track, String? version});
  HytaleInstanceCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _HytaleInstanceCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, HytaleInstance, $Out>
    implements HytaleInstanceCopyWith<$R, HytaleInstance, $Out> {
  _HytaleInstanceCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<HytaleInstance> $mapper =
      HytaleInstanceMapper.ensureInitialized();
  @override
  $R call({String? id, String? name, PatchTrack? track, String? version}) =>
      $apply(
        FieldCopyWithData({
          if (id != null) #id: id,
          if (name != null) #name: name,
          if (track != null) #track: track,
          if (version != null) #version: version,
        }),
      );
  @override
  HytaleInstance $make(CopyWithData data) => HytaleInstance(
    id: data.get(#id, or: $value.id),
    name: data.get(#name, or: $value.name),
    track: data.get(#track, or: $value.track),
    version: data.get(#version, or: $value.version),
  );

  @override
  HytaleInstanceCopyWith<$R2, HytaleInstance, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _HytaleInstanceCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class HytaleInstanceBuilderMapper
    extends ClassMapperBase<HytaleInstanceBuilder> {
  HytaleInstanceBuilderMapper._();

  static HytaleInstanceBuilderMapper? _instance;
  static HytaleInstanceBuilderMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HytaleInstanceBuilderMapper._());
      PatchTrackMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'HytaleInstanceBuilder';

  static String _$name(HytaleInstanceBuilder v) => v.name;
  static const Field<HytaleInstanceBuilder, String> _f$name = Field(
    'name',
    _$name,
  );
  static PatchTrack _$track(HytaleInstanceBuilder v) => v.track;
  static const Field<HytaleInstanceBuilder, PatchTrack> _f$track = Field(
    'track',
    _$track,
  );
  static String _$version(HytaleInstanceBuilder v) => v.version;
  static const Field<HytaleInstanceBuilder, String> _f$version = Field(
    'version',
    _$version,
  );

  @override
  final MappableFields<HytaleInstanceBuilder> fields = const {
    #name: _f$name,
    #track: _f$track,
    #version: _f$version,
  };

  static HytaleInstanceBuilder _instantiate(DecodingData data) {
    return HytaleInstanceBuilder(
      name: data.dec(_f$name),
      track: data.dec(_f$track),
      version: data.dec(_f$version),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static HytaleInstanceBuilder fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<HytaleInstanceBuilder>(map);
  }

  static HytaleInstanceBuilder fromJson(String json) {
    return ensureInitialized().decodeJson<HytaleInstanceBuilder>(json);
  }
}

mixin HytaleInstanceBuilderMappable {
  String toJson() {
    return HytaleInstanceBuilderMapper.ensureInitialized()
        .encodeJson<HytaleInstanceBuilder>(this as HytaleInstanceBuilder);
  }

  Map<String, dynamic> toMap() {
    return HytaleInstanceBuilderMapper.ensureInitialized()
        .encodeMap<HytaleInstanceBuilder>(this as HytaleInstanceBuilder);
  }

  HytaleInstanceBuilderCopyWith<
    HytaleInstanceBuilder,
    HytaleInstanceBuilder,
    HytaleInstanceBuilder
  >
  get copyWith =>
      _HytaleInstanceBuilderCopyWithImpl<
        HytaleInstanceBuilder,
        HytaleInstanceBuilder
      >(this as HytaleInstanceBuilder, $identity, $identity);
  @override
  String toString() {
    return HytaleInstanceBuilderMapper.ensureInitialized().stringifyValue(
      this as HytaleInstanceBuilder,
    );
  }

  @override
  bool operator ==(Object other) {
    return HytaleInstanceBuilderMapper.ensureInitialized().equalsValue(
      this as HytaleInstanceBuilder,
      other,
    );
  }

  @override
  int get hashCode {
    return HytaleInstanceBuilderMapper.ensureInitialized().hashValue(
      this as HytaleInstanceBuilder,
    );
  }
}

extension HytaleInstanceBuilderValueCopy<$R, $Out>
    on ObjectCopyWith<$R, HytaleInstanceBuilder, $Out> {
  HytaleInstanceBuilderCopyWith<$R, HytaleInstanceBuilder, $Out>
  get $asHytaleInstanceBuilder => $base.as(
    (v, t, t2) => _HytaleInstanceBuilderCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class HytaleInstanceBuilderCopyWith<
  $R,
  $In extends HytaleInstanceBuilder,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name, PatchTrack? track, String? version});
  HytaleInstanceBuilderCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _HytaleInstanceBuilderCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, HytaleInstanceBuilder, $Out>
    implements HytaleInstanceBuilderCopyWith<$R, HytaleInstanceBuilder, $Out> {
  _HytaleInstanceBuilderCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<HytaleInstanceBuilder> $mapper =
      HytaleInstanceBuilderMapper.ensureInitialized();
  @override
  $R call({String? name, PatchTrack? track, String? version}) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (track != null) #track: track,
      if (version != null) #version: version,
    }),
  );
  @override
  HytaleInstanceBuilder $make(CopyWithData data) => HytaleInstanceBuilder(
    name: data.get(#name, or: $value.name),
    track: data.get(#track, or: $value.track),
    version: data.get(#version, or: $value.version),
  );

  @override
  HytaleInstanceBuilderCopyWith<$R2, HytaleInstanceBuilder, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _HytaleInstanceBuilderCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

