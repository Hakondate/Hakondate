import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_navigator_state.freezed.dart';

@freezed
class AppNavigatorState with _$AppNavigatorState {
  const factory AppNavigatorState({
    @Default(true) bool isInitialLoading,
    @Default(false) bool isShowTerms,
    @Default(false) bool isShowSignup,
    @Default(false) bool isShowSetting,
    @Default(false) bool isShowHelp,
    @Default(false) bool isShowAboutUs,
  }) = _AppNavigatorState;
}

// Home内の遷移で少なくても必要になるやつら
// @Default(false) bool isShowMenuList,
// int? selectedMenuId,
// int? selectedDishId,
// int? selectedPopularRecipeId,
// int? selectedMonthlyOriginId,
