import 'dart:convert';

import 'package:hyapi/src/managers/manager.dart';
import 'package:hyapi/src/models/session/session.dart';

class SessionManager extends Manager {
  const SessionManager({required super.client});

  Future<Session> create() async {
    final response = await client.dio.post(
      "https://sessions.hytale.com/game-session/new",
      data: jsonEncode({
        "uuid": // todo
      }),
    );

    return SessionMapper.fromMap(response.data);
  }

  Future<Session> createServerSession(Session parent) async {
    // I'll need to re-eval the method names, idk exactly
    // the role of this yet
    final response = await client.dio.post(
      "https://sessions.hytale.com/game-session/child",
      data: jsonEncode({
        "scopes": ["hytale:server"],
      }),
    );

    return SessionMapper.fromMap(response.data);
  }
}
