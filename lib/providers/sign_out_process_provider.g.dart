// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_out_process_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SignOutProcess)
const signOutProcessProvider = SignOutProcessProvider._();

final class SignOutProcessProvider
    extends $AsyncNotifierProvider<SignOutProcess, void> {
  const SignOutProcessProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'signOutProcessProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$signOutProcessHash();

  @$internal
  @override
  SignOutProcess create() => SignOutProcess();
}

String _$signOutProcessHash() => r'2f2fcd5736814172f7defefcf55862b0533efd7b';

abstract class _$SignOutProcess extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    build();
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<void>, void>,
        AsyncValue<void>,
        Object?,
        Object?>;
    element.handleValue(ref, null);
  }
}
