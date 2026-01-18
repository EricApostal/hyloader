import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hyloader/features/authentication/repositories/client.dart';

class PendingAuthScreen extends ConsumerWidget {
  const PendingAuthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final client = ref.watch(clientControllerProvider);

    return Center(child: Text("Loading"));
  }
}
