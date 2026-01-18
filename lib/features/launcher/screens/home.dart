import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hyloader/features/instances/components/list.dart';
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
      body: Column(
        children: [
          SizedBox(),
          Expanded(child: InstancesList()),
        ],
      ),
    );
  }
}
