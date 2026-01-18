import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hyapi/hyapi.dart';
import 'package:hyloader/features/instances/components/start.dart';

class InstanceCard extends ConsumerWidget {
  final HytaleInstance instance;
  const InstanceCard({super.key, required this.instance});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainer,
        borderRadius: .circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: .start,
              children: [
                Text(instance.name, style: theme.textTheme.titleSmall),
                Text(
                  "${instance.track} - ${instance.version}",
                  style: theme.textTheme.labelSmall!.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
            Spacer(),
            StartInstanceButton(instance: instance),
          ],
        ),
      ),
    );
  }
}
