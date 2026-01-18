// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Instances)
final instancesProvider = InstancesProvider._();

final class InstancesProvider
    extends $NotifierProvider<Instances, List<HytaleInstance>> {
  InstancesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'instancesProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$instancesHash();

  @$internal
  @override
  Instances create() => Instances();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<HytaleInstance> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<HytaleInstance>>(value),
    );
  }
}

String _$instancesHash() => r'ecf281c36e9af7115f0c92954bfc71a9cf50e9be';

abstract class _$Instances extends $Notifier<List<HytaleInstance>> {
  List<HytaleInstance> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<List<HytaleInstance>, List<HytaleInstance>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<HytaleInstance>, List<HytaleInstance>>,
              List<HytaleInstance>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
