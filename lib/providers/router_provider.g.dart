// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router_provider.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $rootRoute,
      $signInRoute,
      $homeRoute,
    ];

RouteBase get $rootRoute => GoRouteData.$route(
      path: '/',
      factory: $RootRoute._fromState,
    );

mixin $RootRoute on GoRouteData {
  static RootRoute _fromState(GoRouterState state) => RootRoute();

  @override
  String get location => GoRouteData.$location(
        '/',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $signInRoute => GoRouteData.$route(
      path: '/sign_in',
      factory: $SignInRoute._fromState,
    );

mixin $SignInRoute on GoRouteData {
  static SignInRoute _fromState(GoRouterState state) => SignInRoute();

  @override
  String get location => GoRouteData.$location(
        '/sign_in',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/home',
      factory: $HomeRoute._fromState,
    );

mixin $HomeRoute on GoRouteData {
  static HomeRoute _fromState(GoRouterState state) => HomeRoute();

  @override
  String get location => GoRouteData.$location(
        '/home',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(router)
const routerProvider = RouterProvider._();

final class RouterProvider
    extends $FunctionalProvider<GoRouter, GoRouter, GoRouter>
    with $Provider<GoRouter> {
  const RouterProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'routerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$routerHash();

  @$internal
  @override
  $ProviderElement<GoRouter> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GoRouter create(Ref ref) {
    return router(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GoRouter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GoRouter>(value),
    );
  }
}

String _$routerHash() => r'e2a57acb45c8b68c12b5dbb46970da777cfcfcb0';

/// go_routerのリフレッシュリスナーを提供するProvider

@ProviderFor(refreshListenable)
const refreshListenableProvider = RefreshListenableProvider._();

/// go_routerのリフレッシュリスナーを提供するProvider

final class RefreshListenableProvider
    extends $FunctionalProvider<Listenable, Listenable, Listenable>
    with $Provider<Listenable> {
  /// go_routerのリフレッシュリスナーを提供するProvider
  const RefreshListenableProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'refreshListenableProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$refreshListenableHash();

  @$internal
  @override
  $ProviderElement<Listenable> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Listenable create(Ref ref) {
    return refreshListenable(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Listenable value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Listenable>(value),
    );
  }
}

String _$refreshListenableHash() => r'924e2b364f5c4d9abcdf4335e301b3485b1a26a3';
