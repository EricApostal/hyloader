import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hyloader/features/launcher/components/play.dart';

class LauncherScreen extends ConsumerStatefulWidget {
  const LauncherScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LauncherScreenState();
}

class _LauncherScreenState extends ConsumerState<LauncherScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              // child: Column(
              //   crossAxisAlignment: .start,
              //   children: [Text("Hyloader", style: theme.textTheme.titleLarge)],
              // ),
            ),
          ),
          Positioned(right: 24, bottom: 24, child: PlayButton()),
        ],
      ),
    );
  }
}
