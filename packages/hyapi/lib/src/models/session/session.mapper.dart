// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'session.dart';

class SessionMapper extends ClassMapperBase<Session> {
  SessionMapper._();

  static SessionMapper? _instance;
  static SessionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SessionMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Session';

  static String _$expiresAt(Session v) => v.expiresAt;
  static const Field<Session, String> _f$expiresAt = Field(
    'expiresAt',
    _$expiresAt,
  );
  static String _$identityToken(Session v) => v.identityToken;
  static const Field<Session, String> _f$identityToken = Field(
    'identityToken',
    _$identityToken,
  );
  static String _$sessionToken(Session v) => v.sessionToken;
  static const Field<Session, String> _f$sessionToken = Field(
    'sessionToken',
    _$sessionToken,
  );

  @override
  final MappableFields<Session> fields = const {
    #expiresAt: _f$expiresAt,
    #identityToken: _f$identityToken,
    #sessionToken: _f$sessionToken,
  };

  static Session _instantiate(DecodingData data) {
    return Session(
      expiresAt: data.dec(_f$expiresAt),
      identityToken: data.dec(_f$identityToken),
      sessionToken: data.dec(_f$sessionToken),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Session fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Session>(map);
  }

  static Session fromJson(String json) {
    return ensureInitialized().decodeJson<Session>(json);
  }
}

mixin SessionMappable {
  String toJson() {
    return SessionMapper.ensureInitialized().encodeJson<Session>(
      this as Session,
    );
  }

  Map<String, dynamic> toMap() {
    return SessionMapper.ensureInitialized().encodeMap<Session>(
      this as Session,
    );
  }

  SessionCopyWith<Session, Session, Session> get copyWith =>
      _SessionCopyWithImpl<Session, Session>(
        this as Session,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return SessionMapper.ensureInitialized().stringifyValue(this as Session);
  }

  @override
  bool operator ==(Object other) {
    return SessionMapper.ensureInitialized().equalsValue(
      this as Session,
      other,
    );
  }

  @override
  int get hashCode {
    return SessionMapper.ensureInitialized().hashValue(this as Session);
  }
}

extension SessionValueCopy<$R, $Out> on ObjectCopyWith<$R, Session, $Out> {
  SessionCopyWith<$R, Session, $Out> get $asSession =>
      $base.as((v, t, t2) => _SessionCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SessionCopyWith<$R, $In extends Session, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? expiresAt, String? identityToken, String? sessionToken});
  SessionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SessionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Session, $Out>
    implements SessionCopyWith<$R, Session, $Out> {
  _SessionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Session> $mapper =
      SessionMapper.ensureInitialized();
  @override
  $R call({String? expiresAt, String? identityToken, String? sessionToken}) =>
      $apply(
        FieldCopyWithData({
          if (expiresAt != null) #expiresAt: expiresAt,
          if (identityToken != null) #identityToken: identityToken,
          if (sessionToken != null) #sessionToken: sessionToken,
        }),
      );
  @override
  Session $make(CopyWithData data) => Session(
    expiresAt: data.get(#expiresAt, or: $value.expiresAt),
    identityToken: data.get(#identityToken, or: $value.identityToken),
    sessionToken: data.get(#sessionToken, or: $value.sessionToken),
  );

  @override
  SessionCopyWith<$R2, Session, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _SessionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

