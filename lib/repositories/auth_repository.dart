import 'package:flutter_signin_signout/constants/auth_state_type.dart';
import 'package:flutter_signin_signout/repositories/late_response.dart';

/// 認証処理用リポジトリ層
class AuthRepository {
  /// 認証状態の変更を通知するリスナー
  void Function(AuthStateType)? listener;

  /// 現在の認証状態
  AuthStateType get current => throw UnimplementedError();

  /// メールアドレスとパスワードで認証する
  Future<AuthStateType> signIn({
    required String email,
    required String password,
  }) async {
    throw UnimplementedError();
  }

  /// 認証を解除する
  Future<void> signOut() async {
    throw UnimplementedError();
  }
}

class AuthRepositoryPseudo extends AuthRepository with LateResponse {
  AuthStateType _state = AuthStateType.unauthorized;

  @override
  AuthStateType get current => _state;

  @override
  Future<AuthStateType> signIn({
    required String email,
    required String password,
  }) async {
    return response(() {
      _state = AuthStateType.authorized;
      listener?.call(_state);
      return _state;
    });
  }

  @override
  Future<void> signOut() async {
    await response(() {
      _state = AuthStateType.unauthorized;
      listener?.call(_state);
    });
  }
}
