import 'package:dart_mappable/dart_mappable.dart';
import 'package:oauth2/oauth2.dart';

part 'client.mapper.dart';

// maybe I'll end up doing more here

@MappableClass(includeCustomMappers: [CredentialsMapper()])
class ClientUser with ClientUserMappable {
  final String ownerId;
  final Credentials credentials;
  const ClientUser({required this.ownerId, required this.credentials});
}

class CredentialsMapper extends SimpleMapper<Credentials> {
  const CredentialsMapper();

  @override
  Credentials decode(dynamic value) {
    return Credentials.fromJson(value);
  }

  @override
  dynamic encode(Credentials self) {
    return self.toJson();
  }
}
