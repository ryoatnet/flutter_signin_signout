import 'package:flutter_signin_signout/providers/repositories_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_in_process_provider.g.dart';

/// 認証処理を提供するProvider
@riverpod
class SignInProcess extends _$SignInProcess {
  @override
  Future<void> build() async {}

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await ref.read(repositoriesProvider).auth.signIn(
            email: email,
            password: password,
          );
      return;
    });
  }
}
