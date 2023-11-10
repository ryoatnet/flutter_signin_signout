import 'package:flutter_signin_signout/providers/repositories_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_out_process_provider.g.dart';

@riverpod
class SignOutProcess extends _$SignOutProcess {
  @override
  Future<void> build() async {}

  Future<void> signOut() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await ref.read(repositoriesProvider).auth.signOut();
      return;
    });
  }
}
