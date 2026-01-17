import 'dart:io';

String getArchitecture() {
  final versionString = Platform.version;

  if (versionString.contains('arm64')) return 'arm64';
  if (versionString.contains('x64') || versionString.contains('x86_64')) {
    return 'x86_64';
  }
  if (versionString.contains('arm')) return 'arm';

  return 'unknown';
}
