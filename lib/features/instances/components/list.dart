import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hyloader/features/instances/components/card.dart';
import 'package:hyloader/features/instances/components/create.dart';
import 'package:hyloader/features/instances/providers/instance.dart';

class InstancesList extends ConsumerStatefulWidget {
  const InstancesList({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _InstancesListState();
}

class _InstancesListState extends ConsumerState<InstancesList> {
  @override
  Widget build(BuildContext context) {
    final items = ref.watch(instancesProvider);
    if (items.isEmpty) {
      return Center(child: CreateInstance());
    }

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return InstanceCard(instance: items[index]);
      },
    );
  }
}
