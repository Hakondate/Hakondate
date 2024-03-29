import 'package:flutter/material.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/model/school/school_model.dart';
import 'package:hakondate/model/user/user_model.dart';
import 'package:hakondate/repository/local/sqlite/schools/schools_local_repository.dart';
import 'package:hakondate/state/signup/signup_state.dart';
import 'package:hakondate/state/user_settings/user_settings_state.dart';
import 'package:hakondate/util/exception/parameters_exception.dart';
import 'package:hakondate/view_model/multi_page/user/user_view_model.dart';
import 'package:hakondate/view_model/single_page/user_settings/user_settings_view_model.dart';

part 'signup_view_model.g.dart';

@riverpod
class SignupViewModel extends _$SignupViewModel {
  @override
  FutureOr<SignupState> build() async {
    UserModel? editingUser;
    ref.read(userSettingsViewModelProvider).whenData((UserSettingsState data) {
      editingUser = data.editingUser;
    });

    final SchoolsLocalRepository schoolLocalRepository = ref.watch(schoolsLocalRepositoryProvider);
    final List<SchoolModel> schools = await schoolLocalRepository.list();

    if (editingUser != null) {
      final SchoolModel school = await schoolLocalRepository.getById(editingUser!.schoolId);

      final List<String> schoolYears = _getSchoolYears(school);

      return SignupState(
        schools: schools,
        name: editingUser!.name,
        schoolId: editingUser!.schoolId,
        schoolYears: schoolYears,
        schoolTrailing: school.name,
        schoolYear: editingUser!.schoolYear,
        schoolYearTrailing: '${editingUser!.schoolYear}年生',
      );
    }

    return SignupState(
      schools: schools,
    );
  }

  Future<void> signup() async {
    final AsyncValue<SignupState> cache = state;

    cache.whenData((SignupState data) async {
      state = const AsyncLoading<SignupState>();

      final String? name = data.name;
      final int? schoolId = data.schoolId;
      final int? schoolYear = data.schoolYear;

      try {
        if (name == null || schoolId == null || schoolYear == null) {
          throw const ParametersException('Do not allow Null parameter');
        }

        await ref.read(userViewModelProvider.notifier).createUser(
              name: name,
              schoolId: schoolId,
              schoolYear: schoolYear,
            );
        state = cache;
      } on Exception catch (error, stack) {
        debugPrint(error.toString());
        debugPrint(stack.toString());
        state = AsyncError<SignupState>(error, stack).copyWithPrevious(cache);
      }
    });
  }

  Future<void> edit() async {
    final AsyncValue<SignupState> cache = state;

    cache.whenData((SignupState data) async {
      state = const AsyncLoading<SignupState>();

      final String? name = data.name;
      final int? schoolId = data.schoolId;
      final int? schoolYear = data.schoolYear;

      try {
        if (name == null || schoolId == null || schoolYear == null) {
          throw const ParametersException('Do not allow Null parameter');
        }

        await ref.read(userViewModelProvider.notifier).updateCurrentUser(
              name: name,
              schoolId: schoolId,
              schoolYear: schoolYear,
            );

        state = cache;
      } on Exception catch (error, stack) {
        debugPrint(error.toString());
        debugPrint(stack.toString());
        state = AsyncError<SignupState>(error, stack).copyWithPrevious(cache);
      }
    });
  }

  Future<void> retry() async {
    final AsyncValue<SignupState> cache = state;
    if (cache is! AsyncError) return;

    state = AsyncData<SignupState>(cache.valueOrNull!);

    await signup();
  }

  void updateName(String? name) {
    state.whenData(
      (SignupState data) => state = AsyncData<SignupState>(data.copyWith(name: name)),
    );
  }

  Future<void> updateSchool(int id) async {
    state.whenData((SignupState data) async {
      final SchoolModel school = await ref.read(schoolsLocalRepositoryProvider).getById(id);
      final List<String> schoolYears = _getSchoolYears(school);
      if (data.schoolYear != null && data.schoolYear! > 3 && school.classification == SchoolClassification.secondary) {
        state = AsyncData<SignupState>(
          data.copyWith(
            schoolId: id,
            schoolYear: 3,
            schoolYears: schoolYears,
            schoolTrailing: school.name,
            schoolYearTrailing: '3年生',
          ),
        );
      } else {
        state = AsyncData<SignupState>(
          data.copyWith(
            schoolId: id,
            schoolYears: schoolYears,
            schoolTrailing: school.name,
          ),
        );
      }
    });
  }

  void updateSchoolYear(int year) {
    state.whenData(
      (SignupState data) => state = AsyncData<SignupState>(
        data.copyWith(
          schoolYear: year,
          schoolYearTrailing: '$year年生',
        ),
      ),
    );
  }

  bool checkValidation() {
    _checkNameValidation();
    _checkSchoolValidation();

    return state.maybeWhen(
      data: (SignupState data) => data.nameErrorState == null && data.schoolErrorState == null,
      orElse: () => false,
    );
  }

  void _checkNameValidation() {
    state.whenData((SignupState data) {
      final String? nameErrorState = (data.name == null || data.name!.isEmpty) ? 'お子様の名前を入力してください' : null;
      state = AsyncData<SignupState>(data.copyWith(nameErrorState: nameErrorState));
    });
  }

  void _checkSchoolValidation() {
    state.whenData((SignupState data) {
      if (data.schoolId != null && data.schoolYear != null) {
        state = AsyncData<SignupState>(data.copyWith(schoolErrorState: null));
        return;
      }

      if (data.schoolId == null && data.schoolYear == null) {
        state = AsyncData<SignupState>(
          data.copyWith(schoolErrorState: '学校・学年を選択してください'),
        );
      } else if (data.schoolId == null) {
        state = AsyncData<SignupState>(
          data.copyWith(schoolErrorState: '学校を選択してください'),
        );
      } else if (data.schoolYear == null) {
        state = AsyncData<SignupState>(
          data.copyWith(schoolErrorState: '学年を選択してください'),
        );
      }
    });
  }

  List<String> _getSchoolYears(SchoolModel school) {
    return (school.classification == SchoolClassification.primary)
        ? <String>['1年生', '2年生', '3年生', '4年生', '5年生', '6年生']
        : <String>['1年生', '2年生', '3年生'];
  }
}
