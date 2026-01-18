import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hyloader/features/authentication/services/login.dart';

class PendingAuthScreen extends ConsumerStatefulWidget {
  const PendingAuthScreen({super.key});

  @override
  ConsumerState<PendingAuthScreen> createState() => _PendingAuthScreenState();
}

class _PendingAuthScreenState extends ConsumerState<PendingAuthScreen> {
  @override
  void initState() {
    super.initState();
    LoginService.login(ref);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Loading")));
  }
}
