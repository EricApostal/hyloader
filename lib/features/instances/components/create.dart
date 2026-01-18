import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:hyapi/hyapi.dart';
import 'package:hyloader/features/authentication/repositories/client.dart';
import 'package:hyloader/features/instances/providers/instance.dart';

class CreateInstance extends ConsumerWidget {
  const CreateInstance({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FilledButton(
      onPressed: () async {
        final client = ref.read(clientControllerProvider);
        ref
            .read(instancesProvider.notifier)
            .create(
              HytaleInstanceBuilder(
                name: "Test Instance",
                track: .release,
                version: "1",
              ),
            );
      },
      child: Text("Create (temp)"),
    );
  }
}
