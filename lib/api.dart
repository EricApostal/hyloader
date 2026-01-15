// just for testing
// will do it in the package later

import 'dart:convert';
import 'dart:io';

import 'package:oauth2/oauth2.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> startOAuth() async {
  final authorizationEndpoint = Uri.parse(
    'https://oauth.accounts.hytale.com/oauth2/auth',
  );

  final accessTokenUrl = Uri.parse(
    "https://oauth.accounts.hytale.com/oauth2/token",
  );

  final clientId = "hytale-launcher";

  final grant = AuthorizationCodeGrant(
    clientId,
    authorizationEndpoint,
    accessTokenUrl,
  );

  final scopes = ["openid", "offline"];
  final redirectUrl = Uri.parse("https://accounts.hytale.com/consent/client");

  final port = 8080;
  // idk
  final state = "WJNEHWO2CJDJKWQVJJO7ADIBJT";

  final encodedState = base64Encode(
    utf8.encode(jsonEncode({"state": state, "port": port})),
  );

  final server = await HttpServer.bind(InternetAddress.loopbackIPv4, port);

  final authUrl = grant.getAuthorizationUrl(
    redirectUrl,
    scopes: scopes,
    state: encodedState,
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

  final credentials = (await grant.handleAuthorizationResponse(
    newParams,
  )).credentials;

  print("got creds");
  print(credentials.scopes);
}
