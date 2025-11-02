// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repositories_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(repositories)
const repositoriesProvider = RepositoriesProvider._();

final class RepositoriesProvider
    extends $FunctionalProvider<Repositories, Repositories, Repositories>
    with $Provider<Repositories> {
  const RepositoriesProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'repositoriesProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$repositoriesHash();

  @$internal
  @override
  $ProviderElement<Repositories> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Repositories create(Ref ref) {
    return repositories(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Repositories value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Repositories>(value),
    );
  }
}

String _$repositoriesHash() => r'fc8ca766de6ca1d8a9ce54e5e386f51c1c4a7b42';
