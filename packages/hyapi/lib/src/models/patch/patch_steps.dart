import 'package:dart_mappable/dart_mappable.dart';

part 'patch_steps.mapper.dart';

@MappableClass()
class PatchStep with PatchStepMappable {
  final int from;
  final String pwr;
  final String sig;
  final int to;
  const PatchStep({
    required this.from,
    required this.pwr,
    required this.sig,
    required this.to,
  });
}
