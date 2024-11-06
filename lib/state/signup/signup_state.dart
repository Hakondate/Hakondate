import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/model/school/school_model.dart';

part 'signup_state.freezed.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState({
    String? lastName,
    String? firstName,
    int? schoolId,
    int? schoolYear,
    @Default('学校を選択') String schoolTrailing,
    @Default('学年を選択') String schoolYearTrailing,
    @Default(<SchoolModel>[]) List<SchoolModel> schools,
    @Default(<String>['1年生', '2年生', '3年生']) List<String> schoolYears,
    String? nameErrorState,
    String? schoolErrorState,
  }) = _SignupState;
}
