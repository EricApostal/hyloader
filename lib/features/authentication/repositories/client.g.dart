// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ClientController)
final clientControllerProvider = ClientControllerProvider._();

final class ClientControllerProvider
    extends $NotifierProvider<ClientController, HytaleClient?> {
  ClientControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'clientControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$clientControllerHash();

  @$internal
  @override
  ClientController create() => ClientController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HytaleClient? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<HytaleClient?>(value),
    );
  }
}

String _$clientControllerHash() => r'22f4ee5250be2fe43d08ce2de156c2811160dd92';

abstract class _$ClientController extends $Notifier<HytaleClient?> {
  HytaleClient? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<HytaleClient?, HytaleClient?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<HytaleClient?, HytaleClient?>,
              HytaleClient?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
