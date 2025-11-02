// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 認証状態を提供するProvider

@ProviderFor(AuthState)
const authStateProvider = AuthStateProvider._();

/// 認証状態を提供するProvider
final class AuthStateProvider
    extends $AsyncNotifierProvider<AuthState, AuthStateType> {
  /// 認証状態を提供するProvider
  const AuthStateProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'authStateProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$authStateHash();

  @$internal
  @override
  AuthState create() => AuthState();
}

String _$authStateHash() => r'b16f43ede8409a84351e11ad6d596dea11124580';

/// 認証状態を提供するProvider

abstract class _$AuthState extends $AsyncNotifier<AuthStateType> {
  FutureOr<AuthStateType> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<AuthStateType>, AuthStateType>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<AuthStateType>, AuthStateType>,
        AsyncValue<AuthStateType>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
