import 'package:flutter/material.dart';
import 'package:flutter_signin_signout/providers/repositories_provider.dart';
import 'package:flutter_signin_signout/signin_signout_app.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      overrides: [
        repositoriesProvider.overrideWithValue(Repositories.pseudo()),
      ],
      child: const SignInSignOutApp(),
    ),
  );
}
