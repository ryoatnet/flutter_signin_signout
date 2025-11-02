// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_process_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 認証処理を提供するProvider

@ProviderFor(SignInProcess)
const signInProcessProvider = SignInProcessProvider._();

/// 認証処理を提供するProvider
final class SignInProcessProvider
    extends $AsyncNotifierProvider<SignInProcess, void> {
  /// 認証処理を提供するProvider
  const SignInProcessProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'signInProcessProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$signInProcessHash();

  @$internal
  @override
  SignInProcess create() => SignInProcess();
}

String _$signInProcessHash() => r'12a95fd19f00b6ece6cff6123d44fd523ae09ea2';

/// 認証処理を提供するProvider

abstract class _$SignInProcess extends $AsyncNotifier<void> {
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
