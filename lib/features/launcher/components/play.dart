import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hyloader/features/authentication/repositories/client.dart';

class PlayButton extends ConsumerStatefulWidget {
  const PlayButton({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PlayButtonState();
}

class _PlayButtonState extends ConsumerState<PlayButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: .circular(12),
      onTap: () async {
        HapticFeedback.lightImpact();
        final client = ref.watch(clientControllerProvider)!;
        print("probs needs to remove this button because no instance");
        // await client.launcher.launchHytale();
      },
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: .circular(12),
        ),
        child: Padding(padding: .all(15), child: Text("Play")),
      ),
    );
  }
}
