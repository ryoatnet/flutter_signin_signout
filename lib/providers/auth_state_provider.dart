import 'package:flutter_signin_signout/constants/auth_state_type.dart';
import 'package:flutter_signin_signout/providers/repositories_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_state_provider.g.dart';

/// 認証状態を提供するProvider
@Riverpod(keepAlive: true)
class AuthState extends _$AuthState {
  @override
  Future<AuthStateType> build() async {
    ref.read(repositoriesProvider).auth.listener = (state) {
      this.state = AsyncData(state);
    };
    return ref.read(repositoriesProvider).auth.current;
  }
}
