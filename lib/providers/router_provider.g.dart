// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router_provider.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $rootRoute,
      $_SignInRoute,
      $_HomeRoute,
    ];

RouteBase get $rootRoute => GoRouteData.$route(
      path: '/',
      factory: $RootRouteExtension._fromState,
    );

extension $RootRouteExtension on RootRoute {
  static RootRoute _fromState(GoRouterState state) => RootRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $_SignInRoute => GoRouteData.$route(
      path: '/sign_in',
      factory: $_SignInRouteExtension._fromState,
    );

extension $_SignInRouteExtension on _SignInRoute {
  static _SignInRoute _fromState(GoRouterState state) => _SignInRoute();

  String get location => GoRouteData.$location(
        '/sign_in',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $_HomeRoute => GoRouteData.$route(
      path: '/home',
      factory: $_HomeRouteExtension._fromState,
    );

extension $_HomeRouteExtension on _HomeRoute {
  static _HomeRoute _fromState(GoRouterState state) => _HomeRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$routerHash() => r'e063e6a9b4b5b73ada0d62c97a96695f7e0913ad';

/// See also [router].
@ProviderFor(router)
final routerProvider = AutoDisposeProvider<GoRouter>.internal(
  router,
  name: r'routerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$routerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RouterRef = AutoDisposeProviderRef<GoRouter>;
String _$refreshListenableHash() => r'65765c15ee7341616646b2a54c0abc82787a38b0';

/// go_routerのリフレッシュリスナーを提供するProvider
///
/// Copied from [refreshListenable].
@ProviderFor(refreshListenable)
final refreshListenableProvider = Provider<Listenable>.internal(
  refreshListenable,
  name: r'refreshListenableProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$refreshListenableHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RefreshListenableRef = ProviderRef<Listenable>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
