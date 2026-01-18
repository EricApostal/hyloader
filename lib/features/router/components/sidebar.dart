import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavigationSidebar extends ConsumerStatefulWidget {
  const NavigationSidebar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _NavigationSidebarState();
}

class _NavigationSidebarState extends ConsumerState<NavigationSidebar> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _NavigationItem extends StatefulWidget {
  const _NavigationItem({super.key});

  @override
  State<_NavigationItem> createState() => __NavigationItemState();
}

class __NavigationItemState extends State<_NavigationItem> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ColorFiltered(colorFilter: .mode(theme.colorScheme.primary, .color));
  }
}
