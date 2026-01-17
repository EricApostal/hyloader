// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'client.dart';

class ClientUserMapper extends ClassMapperBase<ClientUser> {
  ClientUserMapper._();

  static ClientUserMapper? _instance;
  static ClientUserMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ClientUserMapper._());
      MapperContainer.globals.useAll([CredentialsMapper()]);
    }
    return _instance!;
  }

  @override
  final String id = 'ClientUser';

  static Credentials _$credentials(ClientUser v) => v.credentials;
  static const Field<ClientUser, Credentials> _f$credentials = Field(
    'credentials',
    _$credentials,
  );

  @override
  final MappableFields<ClientUser> fields = const {
    #credentials: _f$credentials,
  };

  static ClientUser _instantiate(DecodingData data) {
    return ClientUser(credentials: data.dec(_f$credentials));
  }

  @override
  final Function instantiate = _instantiate;

  static ClientUser fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClientUser>(map);
  }

  static ClientUser fromJson(String json) {
    return ensureInitialized().decodeJson<ClientUser>(json);
  }
}

mixin ClientUserMappable {
  String toJson() {
    return ClientUserMapper.ensureInitialized().encodeJson<ClientUser>(
      this as ClientUser,
    );
  }

  Map<String, dynamic> toMap() {
    return ClientUserMapper.ensureInitialized().encodeMap<ClientUser>(
      this as ClientUser,
    );
  }

  ClientUserCopyWith<ClientUser, ClientUser, ClientUser> get copyWith =>
      _ClientUserCopyWithImpl<ClientUser, ClientUser>(
        this as ClientUser,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ClientUserMapper.ensureInitialized().stringifyValue(
      this as ClientUser,
    );
  }

  @override
  bool operator ==(Object other) {
    return ClientUserMapper.ensureInitialized().equalsValue(
      this as ClientUser,
      other,
    );
  }

  @override
  int get hashCode {
    return ClientUserMapper.ensureInitialized().hashValue(this as ClientUser);
  }
}

extension ClientUserValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClientUser, $Out> {
  ClientUserCopyWith<$R, ClientUser, $Out> get $asClientUser =>
      $base.as((v, t, t2) => _ClientUserCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ClientUserCopyWith<$R, $In extends ClientUser, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({Credentials? credentials});
  ClientUserCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ClientUserCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClientUser, $Out>
    implements ClientUserCopyWith<$R, ClientUser, $Out> {
  _ClientUserCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClientUser> $mapper =
      ClientUserMapper.ensureInitialized();
  @override
  $R call({Credentials? credentials}) => $apply(
    FieldCopyWithData({if (credentials != null) #credentials: credentials}),
  );
  @override
  ClientUser $make(CopyWithData data) =>
      ClientUser(credentials: data.get(#credentials, or: $value.credentials));

  @override
  ClientUserCopyWith<$R2, ClientUser, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ClientUserCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

