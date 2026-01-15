// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'source_package.dart';

class SourcePackageMapper extends ClassMapperBase<SourcePackage> {
  SourcePackageMapper._();

  static SourcePackageMapper? _instance;
  static SourcePackageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SourcePackageMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SourcePackage';

  static String _$name(SourcePackage v) => v.name;
  static const Field<SourcePackage, String> _f$name = Field('name', _$name);
  static String _$link(SourcePackage v) => v.link;
  static const Field<SourcePackage, String> _f$link = Field('link', _$link);
  static int? _$size(SourcePackage v) => v.size;
  static const Field<SourcePackage, int> _f$size = Field(
    'size',
    _$size,
    opt: true,
  );

  @override
  final MappableFields<SourcePackage> fields = const {
    #name: _f$name,
    #link: _f$link,
    #size: _f$size,
  };

  static SourcePackage _instantiate(DecodingData data) {
    return SourcePackage(
      name: data.dec(_f$name),
      link: data.dec(_f$link),
      size: data.dec(_f$size),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static SourcePackage fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SourcePackage>(map);
  }

  static SourcePackage fromJson(String json) {
    return ensureInitialized().decodeJson<SourcePackage>(json);
  }
}

mixin SourcePackageMappable {
  String toJson() {
    return SourcePackageMapper.ensureInitialized().encodeJson<SourcePackage>(
      this as SourcePackage,
    );
  }

  Map<String, dynamic> toMap() {
    return SourcePackageMapper.ensureInitialized().encodeMap<SourcePackage>(
      this as SourcePackage,
    );
  }

  SourcePackageCopyWith<SourcePackage, SourcePackage, SourcePackage>
  get copyWith => _SourcePackageCopyWithImpl<SourcePackage, SourcePackage>(
    this as SourcePackage,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return SourcePackageMapper.ensureInitialized().stringifyValue(
      this as SourcePackage,
    );
  }

  @override
  bool operator ==(Object other) {
    return SourcePackageMapper.ensureInitialized().equalsValue(
      this as SourcePackage,
      other,
    );
  }

  @override
  int get hashCode {
    return SourcePackageMapper.ensureInitialized().hashValue(
      this as SourcePackage,
    );
  }
}

extension SourcePackageValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SourcePackage, $Out> {
  SourcePackageCopyWith<$R, SourcePackage, $Out> get $asSourcePackage =>
      $base.as((v, t, t2) => _SourcePackageCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SourcePackageCopyWith<$R, $In extends SourcePackage, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name, String? link, int? size});
  SourcePackageCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SourcePackageCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SourcePackage, $Out>
    implements SourcePackageCopyWith<$R, SourcePackage, $Out> {
  _SourcePackageCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SourcePackage> $mapper =
      SourcePackageMapper.ensureInitialized();
  @override
  $R call({String? name, String? link, Object? size = $none}) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (link != null) #link: link,
      if (size != $none) #size: size,
    }),
  );
  @override
  SourcePackage $make(CopyWithData data) => SourcePackage(
    name: data.get(#name, or: $value.name),
    link: data.get(#link, or: $value.link),
    size: data.get(#size, or: $value.size),
  );

  @override
  SourcePackageCopyWith<$R2, SourcePackage, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _SourcePackageCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

