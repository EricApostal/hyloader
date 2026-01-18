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
    return Scaffold(
      body: Stack(
        children: [Positioned(right: 36, bottom: 36, child: PlayButton())],
      ),
    );
  }
}
