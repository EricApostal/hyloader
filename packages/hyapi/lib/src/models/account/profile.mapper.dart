// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'profile.dart';

class HytaleProfileMapper extends ClassMapperBase<HytaleProfile> {
  HytaleProfileMapper._();

  static HytaleProfileMapper? _instance;
  static HytaleProfileMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HytaleProfileMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'HytaleProfile';

  static String _$id(HytaleProfile v) => v.id;
  static const Field<HytaleProfile, String> _f$id = Field(
    'id',
    _$id,
    key: r'uuid',
  );
  static DateTime _$createdAt(HytaleProfile v) => v.createdAt;
  static const Field<HytaleProfile, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
  );
  static List<String> _$entitlements(HytaleProfile v) => v.entitlements;
  static const Field<HytaleProfile, List<String>> _f$entitlements = Field(
    'entitlements',
    _$entitlements,
  );
  static DateTime _$nextNameChangeAt(HytaleProfile v) => v.nextNameChangeAt;
  static const Field<HytaleProfile, DateTime> _f$nextNameChangeAt = Field(
    'nextNameChangeAt',
    _$nextNameChangeAt,
  );
  static String _$skin(HytaleProfile v) => v.skin;
  static const Field<HytaleProfile, String> _f$skin = Field('skin', _$skin);
  static String _$username(HytaleProfile v) => v.username;
  static const Field<HytaleProfile, String> _f$username = Field(
    'username',
    _$username,
  );

  @override
  final MappableFields<HytaleProfile> fields = const {
    #id: _f$id,
    #createdAt: _f$createdAt,
    #entitlements: _f$entitlements,
    #nextNameChangeAt: _f$nextNameChangeAt,
    #skin: _f$skin,
    #username: _f$username,
  };

  static HytaleProfile _instantiate(DecodingData data) {
    return HytaleProfile(
      id: data.dec(_f$id),
      createdAt: data.dec(_f$createdAt),
      entitlements: data.dec(_f$entitlements),
      nextNameChangeAt: data.dec(_f$nextNameChangeAt),
      skin: data.dec(_f$skin),
      username: data.dec(_f$username),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static HytaleProfile fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<HytaleProfile>(map);
  }

  static HytaleProfile fromJson(String json) {
    return ensureInitialized().decodeJson<HytaleProfile>(json);
  }
}

mixin HytaleProfileMappable {
  String toJson() {
    return HytaleProfileMapper.ensureInitialized().encodeJson<HytaleProfile>(
      this as HytaleProfile,
    );
  }

  Map<String, dynamic> toMap() {
    return HytaleProfileMapper.ensureInitialized().encodeMap<HytaleProfile>(
      this as HytaleProfile,
    );
  }

  HytaleProfileCopyWith<HytaleProfile, HytaleProfile, HytaleProfile>
  get copyWith => _HytaleProfileCopyWithImpl<HytaleProfile, HytaleProfile>(
    this as HytaleProfile,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return HytaleProfileMapper.ensureInitialized().stringifyValue(
      this as HytaleProfile,
    );
  }

  @override
  bool operator ==(Object other) {
    return HytaleProfileMapper.ensureInitialized().equalsValue(
      this as HytaleProfile,
      other,
    );
  }

  @override
  int get hashCode {
    return HytaleProfileMapper.ensureInitialized().hashValue(
      this as HytaleProfile,
    );
  }
}

extension HytaleProfileValueCopy<$R, $Out>
    on ObjectCopyWith<$R, HytaleProfile, $Out> {
  HytaleProfileCopyWith<$R, HytaleProfile, $Out> get $asHytaleProfile =>
      $base.as((v, t, t2) => _HytaleProfileCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class HytaleProfileCopyWith<$R, $In extends HytaleProfile, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get entitlements;
  $R call({
    String? id,
    DateTime? createdAt,
    List<String>? entitlements,
    DateTime? nextNameChangeAt,
    String? skin,
    String? username,
  });
  HytaleProfileCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _HytaleProfileCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, HytaleProfile, $Out>
    implements HytaleProfileCopyWith<$R, HytaleProfile, $Out> {
  _HytaleProfileCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<HytaleProfile> $mapper =
      HytaleProfileMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
  get entitlements => ListCopyWith(
    $value.entitlements,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(entitlements: v),
  );
  @override
  $R call({
    String? id,
    DateTime? createdAt,
    List<String>? entitlements,
    DateTime? nextNameChangeAt,
    String? skin,
    String? username,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (createdAt != null) #createdAt: createdAt,
      if (entitlements != null) #entitlements: entitlements,
      if (nextNameChangeAt != null) #nextNameChangeAt: nextNameChangeAt,
      if (skin != null) #skin: skin,
      if (username != null) #username: username,
    }),
  );
  @override
  HytaleProfile $make(CopyWithData data) => HytaleProfile(
    id: data.get(#id, or: $value.id),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    entitlements: data.get(#entitlements, or: $value.entitlements),
    nextNameChangeAt: data.get(#nextNameChangeAt, or: $value.nextNameChangeAt),
    skin: data.get(#skin, or: $value.skin),
    username: data.get(#username, or: $value.username),
  );

  @override
  HytaleProfileCopyWith<$R2, HytaleProfile, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _HytaleProfileCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

