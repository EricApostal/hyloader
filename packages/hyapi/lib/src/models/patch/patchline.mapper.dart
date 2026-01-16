// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'patchline.dart';

class PatchTrackMapper extends EnumMapper<PatchTrack> {
  PatchTrackMapper._();

  static PatchTrackMapper? _instance;
  static PatchTrackMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PatchTrackMapper._());
    }
    return _instance!;
  }

  static PatchTrack fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  PatchTrack decode(dynamic value) {
    switch (value) {
      case "pre-release":
        return PatchTrack.preRelease;
      case "release":
        return PatchTrack.release;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(PatchTrack self) {
    switch (self) {
      case PatchTrack.preRelease:
        return "pre-release";
      case PatchTrack.release:
        return "release";
    }
  }
}

extension PatchTrackMapperExtension on PatchTrack {
  dynamic toValue() {
    PatchTrackMapper.ensureInitialized();
    return MapperContainer.globals.toValue<PatchTrack>(this);
  }
}

class PatchlineMapper extends ClassMapperBase<Patchline> {
  PatchlineMapper._();

  static PatchlineMapper? _instance;
  static PatchlineMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PatchlineMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Patchline';

  static String _$buildVersion(Patchline v) => v.buildVersion;
  static const Field<Patchline, String> _f$buildVersion = Field(
    'buildVersion',
    _$buildVersion,
  );
  static int _$newest(Patchline v) => v.newest;
  static const Field<Patchline, int> _f$newest = Field('newest', _$newest);

  @override
  final MappableFields<Patchline> fields = const {
    #buildVersion: _f$buildVersion,
    #newest: _f$newest,
  };

  static Patchline _instantiate(DecodingData data) {
    return Patchline(
      buildVersion: data.dec(_f$buildVersion),
      newest: data.dec(_f$newest),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Patchline fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Patchline>(map);
  }

  static Patchline fromJson(String json) {
    return ensureInitialized().decodeJson<Patchline>(json);
  }
}

mixin PatchlineMappable {
  String toJson() {
    return PatchlineMapper.ensureInitialized().encodeJson<Patchline>(
      this as Patchline,
    );
  }

  Map<String, dynamic> toMap() {
    return PatchlineMapper.ensureInitialized().encodeMap<Patchline>(
      this as Patchline,
    );
  }

  PatchlineCopyWith<Patchline, Patchline, Patchline> get copyWith =>
      _PatchlineCopyWithImpl<Patchline, Patchline>(
        this as Patchline,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return PatchlineMapper.ensureInitialized().stringifyValue(
      this as Patchline,
    );
  }

  @override
  bool operator ==(Object other) {
    return PatchlineMapper.ensureInitialized().equalsValue(
      this as Patchline,
      other,
    );
  }

  @override
  int get hashCode {
    return PatchlineMapper.ensureInitialized().hashValue(this as Patchline);
  }
}

extension PatchlineValueCopy<$R, $Out> on ObjectCopyWith<$R, Patchline, $Out> {
  PatchlineCopyWith<$R, Patchline, $Out> get $asPatchline =>
      $base.as((v, t, t2) => _PatchlineCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PatchlineCopyWith<$R, $In extends Patchline, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? buildVersion, int? newest});
  PatchlineCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PatchlineCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Patchline, $Out>
    implements PatchlineCopyWith<$R, Patchline, $Out> {
  _PatchlineCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Patchline> $mapper =
      PatchlineMapper.ensureInitialized();
  @override
  $R call({String? buildVersion, int? newest}) => $apply(
    FieldCopyWithData({
      if (buildVersion != null) #buildVersion: buildVersion,
      if (newest != null) #newest: newest,
    }),
  );
  @override
  Patchline $make(CopyWithData data) => Patchline(
    buildVersion: data.get(#buildVersion, or: $value.buildVersion),
    newest: data.get(#newest, or: $value.newest),
  );

  @override
  PatchlineCopyWith<$R2, Patchline, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PatchlineCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

