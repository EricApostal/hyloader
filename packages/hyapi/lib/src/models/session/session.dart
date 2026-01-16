import 'package:dart_mappable/dart_mappable.dart';

part 'session.mapper.dart';

@MappableClass()
class Session with SessionMappable {
  final String expiresAt;
  final String identityToken;
  final String sessionToken;
  const Session({
    required this.expiresAt,
    required this.identityToken,
    required this.sessionToken,
  });
}
