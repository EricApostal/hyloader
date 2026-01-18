import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlayButton extends ConsumerStatefulWidget {
  const PlayButton({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PlayButtonState();
}

class _PlayButtonState extends ConsumerState<PlayButton> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(color: Colors.greenAccent),

      child: Padding(padding: .all(20), child: Text("Play")),
    );
  }
}
