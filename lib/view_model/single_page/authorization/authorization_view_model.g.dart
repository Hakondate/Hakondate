// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorization_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authorizationCodeControllerHash() =>
    r'9e152710cae4ddedbfbf36911ced2d17588acf37';

/// See also [AuthorizationCodeController].
@ProviderFor(AuthorizationCodeController)
final authorizationCodeControllerProvider = AutoDisposeNotifierProvider<
    AuthorizationCodeController, TextEditingController>.internal(
  AuthorizationCodeController.new,
  name: r'authorizationCodeControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authorizationCodeControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AuthorizationCodeController
    = AutoDisposeNotifier<TextEditingController>;
String _$authorizationViewModelHash() =>
    r'7e480937d7dd68e144e37657ed8cb21c1f0be4a4';

/// See also [AuthorizationViewModel].
@ProviderFor(AuthorizationViewModel)
final authorizationViewModelProvider = AutoDisposeAsyncNotifierProvider<
    AuthorizationViewModel, AuthorizationState>.internal(
  AuthorizationViewModel.new,
  name: r'authorizationViewModelProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authorizationViewModelHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AuthorizationViewModel = AutoDisposeAsyncNotifier<AuthorizationState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
