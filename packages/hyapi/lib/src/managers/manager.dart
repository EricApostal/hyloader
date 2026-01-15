import 'package:hyapi/src/client.dart';

abstract class Manager {
  final HytaleClient client;
  const Manager({required this.client});
}
