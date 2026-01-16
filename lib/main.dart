import 'package:flutter/material.dart';
import 'package:hyapi/hyapi.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: FilledButton(
            onPressed: () async {
              final baseDocumentDirectory =
                  await getApplicationDocumentsDirectory();
              final client = await HytaleClient.login(
                options: LauncherOptions(
                  basePath: "${baseDocumentDirectory.path}/hyloader",
                ),
              );

              final patched = await client.patches.listPatchSteps();
              print("got patched = $patched");
              final launcherData = await client.accounts.fetchLauncherData();
              print("launcher data = ${launcherData}");

              // print(
              //   "got client = ${client.oauthClient.credentials.accessToken}",
              // );
            },
            child: Text("Yo"),
          ),
        ),
      ),
    );
  }
}
