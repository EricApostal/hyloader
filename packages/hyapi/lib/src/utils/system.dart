import 'dart:io';

String getArchitecture() {
  final versionString = Platform.version;

  if (versionString.contains('arm64')) return 'arm64';
  if (versionString.contains('x64') || versionString.contains('x86_64')) {
    return 'amd64';
  }

  if (versionString.contains('arm')) return 'arm';

  return 'unknown';
}

String getOs() {
  String os = "unknown";
  if (Platform.isMacOS) {
    os = "darwin";
  } else if (Platform.isLinux) {
    os = "linux";
  } else if (Platform.isWindows) {
    return "windows";
  }

  return os;
}
