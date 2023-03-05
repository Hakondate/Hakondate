import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/model/school/school_model.dart';

part 'signup_state.freezed.dart';

@freezed
class SignupState with _$SignupState {
  factory SignupState({
    String? name,
    int? schoolId,
    int? schoolYear,
    String schoolTrailing = '学校を選択',
    String schoolYearTrailing = '学年を選択',
    List<SchoolModel> schools = const <SchoolModel>[],
    List<String> schoolYears = const <String>['1年生', '2年生', '3年生'],
    String? nameErrorState,
    String? schoolErrorState,
  }) => SignupState.data(
    name: name,
    schoolId: schoolId,
    schoolYear: schoolYear,
    schoolTrailing: schoolTrailing,
    schoolYearTrailing: schoolYearTrailing,
    schools: schools,
    schoolYears: schoolYears,
    nameErrorState: nameErrorState,
    schoolErrorState: schoolErrorState,
  );

  const factory SignupState.data({
    required String schoolTrailing,
    required String schoolYearTrailing,
    required List<SchoolModel> schools,
    required List<String> schoolYears,
    String? name,
    int? schoolId,
    int? schoolYear,
    String? nameErrorState,
    String? schoolErrorState,
  }) = SignupStateData;
  const factory SignupState.load() = SignupStateLoad;
  const factory SignupState.error({
    required Exception error,
    required SignupStateData cache,
  }) = SignupStateError;
}
