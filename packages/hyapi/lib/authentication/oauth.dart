// just for testing
// will do it in the package later

import 'dart:convert';
import 'dart:io';

import 'package:oauth2/oauth2.dart';
import 'package:url_launcher/url_launcher.dart';

const clientId = "hytale-launcher";

Future<Client> runOAuthFlow() async {
  final authorizationEndpoint = Uri.parse(
    'https://oauth.accounts.hytale.com/oauth2/auth',
  );

  final accessTokenUrl = Uri.parse(
    "https://oauth.accounts.hytale.com/oauth2/token",
  );

  final grant = AuthorizationCodeGrant(
    clientId,
    authorizationEndpoint,
    accessTokenUrl,
  );

  final scopes = ["openid", "auth:launcher", "offline"];
  final redirectUrl = Uri.parse("https://accounts.hytale.com/consent/client");

  final port = 8080;
  // idk
  final state = "WJNEHWO2CJDJKWQVJJO7ADIBJT";

  final encodedState = base64Encode(
    utf8.encode(jsonEncode({"state": state, "port": port})),
  );

  final server = await HttpServer.bind(InternetAddress.loopbackIPv4, port);

  final baseAuthUrl = grant.getAuthorizationUrl(
    redirectUrl,
    scopes: scopes,
    state: encodedState,
  );

  final authUrl = baseAuthUrl.replace(
    queryParameters: {...baseAuthUrl.queryParameters, 'access_type': 'offline'},
  );

  launchUrl(authUrl);

  final request = await server.first;
  final params = request.uri.queryParameters;

  request.response
    ..statusCode = 200
    ..headers.contentType = ContentType.html
    ..write(
      "<html><body><h1>You can close this window now.</h1></body></html>",
    );
  await request.response.close();
  await server.close();

  final newParams = {
    "code": params["code"]!,
    "scope": params["scope"]!,
    "state": encodedState,
  };

  final response = (await grant.handleAuthorizationResponse(newParams));

  return response;
}
