// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scroll_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$scrollViewModelHash() => r'99eadbd85ab47748e6fcee0342f5af72cdeecd20';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ScrollViewModel extends BuildlessNotifier<ScrollController> {
  late final String path;

  ScrollController build({
    required String path,
  });
}

/// See also [ScrollViewModel].
@ProviderFor(ScrollViewModel)
const scrollViewModelProvider = ScrollViewModelFamily();

/// See also [ScrollViewModel].
class ScrollViewModelFamily extends Family<ScrollController> {
  /// See also [ScrollViewModel].
  const ScrollViewModelFamily();

  /// See also [ScrollViewModel].
  ScrollViewModelProvider call({
    required String path,
  }) {
    return ScrollViewModelProvider(
      path: path,
    );
  }

  @override
  ScrollViewModelProvider getProviderOverride(
    covariant ScrollViewModelProvider provider,
  ) {
    return call(
      path: provider.path,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'scrollViewModelProvider';
}

/// See also [ScrollViewModel].
class ScrollViewModelProvider
    extends NotifierProviderImpl<ScrollViewModel, ScrollController> {
  /// See also [ScrollViewModel].
  ScrollViewModelProvider({
    required String path,
  }) : this._internal(
          () => ScrollViewModel()..path = path,
          from: scrollViewModelProvider,
          name: r'scrollViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$scrollViewModelHash,
          dependencies: ScrollViewModelFamily._dependencies,
          allTransitiveDependencies:
              ScrollViewModelFamily._allTransitiveDependencies,
          path: path,
        );

  ScrollViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.path,
  }) : super.internal();

  final String path;

  @override
  ScrollController runNotifierBuild(
    covariant ScrollViewModel notifier,
  ) {
    return notifier.build(
      path: path,
    );
  }

  @override
  Override overrideWith(ScrollViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: ScrollViewModelProvider._internal(
        () => create()..path = path,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        path: path,
      ),
    );
  }

  @override
  NotifierProviderElement<ScrollViewModel, ScrollController> createElement() {
    return _ScrollViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ScrollViewModelProvider && other.path == path;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, path.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ScrollViewModelRef on NotifierProviderRef<ScrollController> {
  /// The parameter `path` of this provider.
  String get path;
}

class _ScrollViewModelProviderElement
    extends NotifierProviderElement<ScrollViewModel, ScrollController>
    with ScrollViewModelRef {
  _ScrollViewModelProviderElement(super.provider);

  @override
  String get path => (origin as ScrollViewModelProvider).path;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
