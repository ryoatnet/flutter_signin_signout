import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_signin_signout/constants/auth_state_type.dart';
import 'package:flutter_signin_signout/pages/home/home_page.dart';
import 'package:flutter_signin_signout/pages/sign_in/sign_in_page.dart';
import 'package:flutter_signin_signout/providers/auth_state_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_provider.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(
    routes: $appRoutes,
    debugLogDiagnostics: kDebugMode,
    redirect: (context, state) async {
      final authState = await ref.watch(authStateProvider.future);
      return switch (authState) {
        AuthStateType.authorized => null,
        AuthStateType.unauthorized =>
          state.matchedLocation.startsWith(_SignInRoute().location)
              ? null
              : _SignInRoute().location,
      };
    },
    refreshListenable: ref.read(refreshListenableProvider),
  );
}

/// go_routerのリフレッシュリスナーを提供するProvider
@Riverpod(keepAlive: true)
Listenable refreshListenable(RefreshListenableRef ref) {
  return Listenable.merge(
    [
      ValueNotifier(ref.watch(authStateProvider)),
    ],
  );
}

@TypedGoRoute<RootRoute>(path: '/')
class RootRoute extends GoRouteData {
  @override
  FutureOr<String?> redirect(BuildContext context, GoRouterState state) {
    return _HomeRoute().location;
  }
}

@TypedGoRoute<_SignInRoute>(path: '/sign_in')
class _SignInRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SignInPage();
  }
}

@TypedGoRoute<_HomeRoute>(path: '/home')
class _HomeRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}
