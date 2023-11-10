import 'package:flutter_signin_signout/repositories/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repositories_provider.g.dart';

@riverpod
Repositories repositories(RepositoriesRef ref) {
  return Repositories();
}

class Repositories {
  Repositories({AuthRepository? auth}) : auth = auth ?? AuthRepositoryPseudo();
  Repositories.pseudo() : auth = AuthRepositoryPseudo();

  final AuthRepository auth;
}
