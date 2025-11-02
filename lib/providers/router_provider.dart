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
GoRouter router(Ref ref) {
  return GoRouter(
    routes: $appRoutes,
    debugLogDiagnostics: kDebugMode,
    redirect: (context, state) async {
      final authState = await ref.watch(authStateProvider.future);
      return switch (authState) {
        AuthStateType.authorized => null,
        AuthStateType.unauthorized =>
          state.matchedLocation.startsWith(SignInRoute().location)
              ? null
              : SignInRoute().location,
      };
    },
    refreshListenable: ref.read(refreshListenableProvider),
  );
}

/// go_routerのリフレッシュリスナーを提供するProvider
@Riverpod(keepAlive: true)
Listenable refreshListenable(Ref ref) {
  return Listenable.merge(
    [
      ValueNotifier(ref.watch(authStateProvider)),
    ],
  );
}

@TypedGoRoute<RootRoute>(path: '/')
class RootRoute extends GoRouteData with $RootRoute {
  @override
  FutureOr<String?> redirect(BuildContext context, GoRouterState state) {
    return HomeRoute().location;
  }
}

@TypedGoRoute<SignInRoute>(path: '/sign_in')
class SignInRoute extends GoRouteData with $SignInRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SignInPage();
  }
}

@TypedGoRoute<HomeRoute>(path: '/home')
class HomeRoute extends GoRouteData with $HomeRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}
