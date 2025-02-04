// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userAuthorizedHash() => r'9d36c22e6a27b921c852bef0017725d640d4fdad';

/// See also [userAuthorized].
@ProviderFor(userAuthorized)
final userAuthorizedProvider = FutureProvider<bool>.internal(
  userAuthorized,
  name: r'userAuthorizedProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userAuthorizedHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef UserAuthorizedRef = FutureProviderRef<bool>;
String _$userViewModelHash() => r'4b29469389fc1cb5dd6a5c4b37132857021c103d';

/// See also [UserViewModel].
@ProviderFor(UserViewModel)
final userViewModelProvider =
    NotifierProvider<UserViewModel, UserState>.internal(
  UserViewModel.new,
  name: r'userViewModelProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userViewModelHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserViewModel = Notifier<UserState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
