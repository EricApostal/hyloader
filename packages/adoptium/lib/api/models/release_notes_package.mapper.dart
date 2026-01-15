// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'release_notes_package.dart';

class ReleaseNotesPackageMapper extends ClassMapperBase<ReleaseNotesPackage> {
  ReleaseNotesPackageMapper._();

  static ReleaseNotesPackageMapper? _instance;
  static ReleaseNotesPackageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ReleaseNotesPackageMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ReleaseNotesPackage';

  static String _$name(ReleaseNotesPackage v) => v.name;
  static const Field<ReleaseNotesPackage, String> _f$name = Field(
    'name',
    _$name,
  );
  static String _$link(ReleaseNotesPackage v) => v.link;
  static const Field<ReleaseNotesPackage, String> _f$link = Field(
    'link',
    _$link,
  );
  static int? _$size(ReleaseNotesPackage v) => v.size;
  static const Field<ReleaseNotesPackage, int> _f$size = Field(
    'size',
    _$size,
    opt: true,
  );

  @override
  final MappableFields<ReleaseNotesPackage> fields = const {
    #name: _f$name,
    #link: _f$link,
    #size: _f$size,
  };

  static ReleaseNotesPackage _instantiate(DecodingData data) {
    return ReleaseNotesPackage(
      name: data.dec(_f$name),
      link: data.dec(_f$link),
      size: data.dec(_f$size),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ReleaseNotesPackage fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ReleaseNotesPackage>(map);
  }

  static ReleaseNotesPackage fromJson(String json) {
    return ensureInitialized().decodeJson<ReleaseNotesPackage>(json);
  }
}

mixin ReleaseNotesPackageMappable {
  String toJson() {
    return ReleaseNotesPackageMapper.ensureInitialized()
        .encodeJson<ReleaseNotesPackage>(this as ReleaseNotesPackage);
  }

  Map<String, dynamic> toMap() {
    return ReleaseNotesPackageMapper.ensureInitialized()
        .encodeMap<ReleaseNotesPackage>(this as ReleaseNotesPackage);
  }

  ReleaseNotesPackageCopyWith<
    ReleaseNotesPackage,
    ReleaseNotesPackage,
    ReleaseNotesPackage
  >
  get copyWith =>
      _ReleaseNotesPackageCopyWithImpl<
        ReleaseNotesPackage,
        ReleaseNotesPackage
      >(this as ReleaseNotesPackage, $identity, $identity);
  @override
  String toString() {
    return ReleaseNotesPackageMapper.ensureInitialized().stringifyValue(
      this as ReleaseNotesPackage,
    );
  }

  @override
  bool operator ==(Object other) {
    return ReleaseNotesPackageMapper.ensureInitialized().equalsValue(
      this as ReleaseNotesPackage,
      other,
    );
  }

  @override
  int get hashCode {
    return ReleaseNotesPackageMapper.ensureInitialized().hashValue(
      this as ReleaseNotesPackage,
    );
  }
}

extension ReleaseNotesPackageValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ReleaseNotesPackage, $Out> {
  ReleaseNotesPackageCopyWith<$R, ReleaseNotesPackage, $Out>
  get $asReleaseNotesPackage => $base.as(
    (v, t, t2) => _ReleaseNotesPackageCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ReleaseNotesPackageCopyWith<
  $R,
  $In extends ReleaseNotesPackage,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name, String? link, int? size});
  ReleaseNotesPackageCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ReleaseNotesPackageCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ReleaseNotesPackage, $Out>
    implements ReleaseNotesPackageCopyWith<$R, ReleaseNotesPackage, $Out> {
  _ReleaseNotesPackageCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ReleaseNotesPackage> $mapper =
      ReleaseNotesPackageMapper.ensureInitialized();
  @override
  $R call({String? name, String? link, Object? size = $none}) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (link != null) #link: link,
      if (size != $none) #size: size,
    }),
  );
  @override
  ReleaseNotesPackage $make(CopyWithData data) => ReleaseNotesPackage(
    name: data.get(#name, or: $value.name),
    link: data.get(#link, or: $value.link),
    size: data.get(#size, or: $value.size),
  );

  @override
  ReleaseNotesPackageCopyWith<$R2, ReleaseNotesPackage, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ReleaseNotesPackageCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

