import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hyapi/hyapi.dart';
import 'package:hyloader/features/authentication/repositories/client.dart';

class StartInstanceButton extends ConsumerStatefulWidget {
  final HytaleInstance instance;
  const StartInstanceButton({super.key, required this.instance});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _StartInstanceButtonState();
}

class _StartInstanceButtonState extends ConsumerState<StartInstanceButton> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: () {
        HapticFeedback.lightImpact();
        ref
            .read(clientControllerProvider)!
            .launcher
            .launchInstance(widget.instance);
      },
      borderRadius: .circular(8),
      child: Container(
        decoration: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: .circular(8),
        ),
        child: Padding(padding: .all(8), child: Icon(Icons.play_arrow_rounded)),
      ),
    );
  }
}
