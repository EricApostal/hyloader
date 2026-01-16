import 'dart:convert';

import 'package:hyapi/src/managers/manager.dart';
import 'package:hyapi/src/models/session/session.dart';

class SessionManager extends Manager {
  const SessionManager({required super.client});

  Future<Session> create() async {
    final response = await client.dio.post(
      "https://sessions.hytale.com/game-session/new",
      // todo: multiple profiles is probably wise
      // I think I'll have a bit of a refactor once I understand all of hytale,
      // since I'm baking in a few limitations
      data: jsonEncode({"uuid": client.launcherData.profiles.first}),
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
