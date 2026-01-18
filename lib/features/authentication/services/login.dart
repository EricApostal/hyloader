import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hyapi/hyapi.dart';
import 'package:hyloader/features/authentication/repositories/client.dart';
import 'package:hyloader/features/router/controller.dart';

class LoginService {
  static Future<void> login(WidgetRef ref) async {
    HytaleClient? client = await ref
        .read(clientControllerProvider.notifier)
        .tryRestoreSession();

    if (client == null) {
      client = await ref.read(clientControllerProvider.notifier).login();
    }
    routerController.go("/launcher");
  }
}
