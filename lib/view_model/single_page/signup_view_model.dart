import 'package:flutter/foundation.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/model/school/school_model.dart';
import 'package:hakondate/repository/local/schools_local_repository.dart';
import 'package:hakondate/state/signup/signup_state.dart';
import 'package:hakondate/util/exception/parameters_exception.dart';
import 'package:hakondate/view_model/multi_page/user_view_model.dart';

final signupProvider = StateNotifierProvider<SignupViewModel, SignupState>((ref) {
  final SchoolsLocalRepository schoolLocalRepository = ref.read(schoolsLocalRepositoryProvider);
  final UserViewModel userReader = ref.read(userProvider.notifier);
  return SignupViewModel(schoolLocalRepository, userReader);
});

class SignupViewModel extends StateNotifier<SignupState> {
  SignupViewModel(this._schoolLocalRepository, this._userReader) : super(SignupState()) {
    _initialize();
  }

  final SchoolsLocalRepository _schoolLocalRepository;
  final UserViewModel _userReader;

  Future<void> _initialize() async {
    final cache = state;
    if (cache is! SignupStateData) return;

    final List<SchoolModel> schools = await _schoolLocalRepository.getAll();
    state = cache.copyWith(schools: schools);
  }

  Future<void> signup() async {
    final cache = state;
    if (cache is! SignupStateData) return;

    state = const SignupStateLoad();

    final String? name = cache.name;
    final int? schoolId = cache.schoolId;
    final int? schoolYear = cache.schoolYear;

    try {
      if (name == null || schoolId == null || schoolYear == null) {
        throw const ParametersException('Do not allow Null parameter');
      }

      await _userReader.createUser(
        name: name,
        schoolId: schoolId,
        schoolYear: schoolYear,
      );
      state = cache;
    } on Exception catch (error, stack) {
      debugPrint(error.toString());
      debugPrint(stack.toString());
      state = SignupStateError(
        error: error,
        cache: cache,
      );
    }
  }

  Future<void> retry() async {
    final cache = state;
    if (cache is! SignupStateError) return;

    state = cache.cache;
    await signup();
  }

  void updateName(String? name) {
    final cache = state;
    if (cache is! SignupStateData) return;

    state = cache.copyWith(name: name);
  }

  Future<void> updateSchool(int id) async {
    final cache = state;
    if (cache is! SignupStateData) return;

    final SchoolModel school = await _schoolLocalRepository.getById(id);
    final List<String> schoolYears = (school.classification == SchoolClassification.primary)
        ? ['1??????', '2??????', '3??????', '4??????', '5??????', '6??????']
        : ['1??????', '2??????', '3??????'];
    if (cache.schoolYear != null &&
        cache.schoolYear! > 3 &&
        school.classification == SchoolClassification.secondary) {
      state = cache.copyWith(
        schoolId: id,
        schoolYear: 3,
        schoolYears: schoolYears,
        schoolTrailing: school.name,
        schoolYearTrailing: '3??????',
      );
    } else {
      state = cache.copyWith(
        schoolId: id,
        schoolYears: schoolYears,
        schoolTrailing: school.name,
      );
    }
  }

  void updateSchoolYear(int year) {
    final cache = state;
    if (cache is! SignupStateData) return;

    state = cache.copyWith(
      schoolYear: year,
      schoolYearTrailing: '$year??????',
    );
  }

  bool checkValidation() {
    _checkNameValidation();
    _checkSchoolValidation();

    final cache = state;
    if (cache is! SignupStateData) return false;

    return cache.nameErrorState == null && cache.schoolErrorState == null;
  }

  void _checkNameValidation() {
    final cache = state;
    if (cache is! SignupStateData) return;

    final String? nameErrorState = (cache.name == null || cache.name!.isEmpty)
        ? '?????????????????????????????????????????????' : null;
    state = cache.copyWith(nameErrorState: nameErrorState);
  }

  void _checkSchoolValidation() {
    final cache = state;
    if (cache is! SignupStateData) return;
    if (cache.schoolId != null && cache.schoolYear != null) {
      state = cache.copyWith(schoolErrorState: null);
      return;
    }

    if (cache.schoolId == null && cache.schoolYear == null) {
      state = cache.copyWith(schoolErrorState: '??????????????????????????????????????????');
    } else if (cache.schoolId == null) {
      state = cache.copyWith(schoolErrorState: '?????????????????????????????????');
    } else if (cache.schoolYear == null) {
      state = cache.copyWith(schoolErrorState: '?????????????????????????????????');
    }
  }
}
