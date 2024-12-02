// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$analyticsControllerHash() =>
    r'7d32149fb35ade9c69852c70114f1643bde1451f';

/// See also [AnalyticsController].
@ProviderFor(AnalyticsController)
final analyticsControllerProvider = AutoDisposeNotifierProvider<
    AnalyticsController, FirebaseAnalytics>.internal(
  AnalyticsController.new,
  name: r'analyticsControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$analyticsControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AnalyticsController = AutoDisposeNotifier<FirebaseAnalytics>;
String _$isDeveloperHash() => r'6b44f80f0477e0e44a3d0d4cb5873641d296ab79';

/// See also [IsDeveloper].
@ProviderFor(IsDeveloper)
final isDeveloperProvider =
    NotifierProvider<IsDeveloper, Raw<Future<bool>>>.internal(
  IsDeveloper.new,
  name: r'isDeveloperProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$isDeveloperHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$IsDeveloper = Notifier<Raw<Future<bool>>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
