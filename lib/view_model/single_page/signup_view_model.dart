import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/model/school/school_model.dart';
import 'package:hakondate_v2/state/signup/signup_state.dart';
import 'package:hakondate_v2/repository/local/schools_local_repository.dart';

final signupProvider = StateNotifierProvider<SignupViewModel, SignupState>(
    (ref) => SignupViewModel());

class SignupViewModel extends StateNotifier<SignupState> {
  SignupViewModel() : super(const SignupState()) {
    _schoolLocalRepository = SchoolsLocalRepository();
    _initialize();
  }

  late final SchoolsLocalRepository _schoolLocalRepository;

  Future<void> _initialize() async {
    final List<SchoolModel> schools = await _schoolLocalRepository.getAll();
    state = state.copyWith(schools: schools);
  }

  void updateName(String? name) => state = state.copyWith(name: name);

  Future<void> updateSchool(int id) async {
    final SchoolModel school = await _schoolLocalRepository.getById(id);
    final List<String> schoolYears = (school.classification == 0)
        ? ['1年生', '2年生', '3年生', '4年生', '5年生', '6年生']
        : ['1年生', '2年生', '3年生'];
    if (state.schoolYear != null &&
        state.schoolYear! > 3 &&
        school.classification > 0) {
      state = state.copyWith(
        schoolId: id,
        schoolYear: 3,
        schoolYears: schoolYears,
        schoolTrailing: school.name,
        schoolYearTrailing: '3年生',
      );
    } else {
      state = state.copyWith(
        schoolId: id,
        schoolYears: schoolYears,
        schoolTrailing: school.name,
      );
    }
  }

  void updateSchoolYear(int year) =>
      state = state.copyWith(schoolYear: year, schoolYearTrailing: '$year年生');

  bool checkValidation() {
    _checkNameValidation();
    _checkSchoolValidation();

    return state.nameErrorState == null && state.schoolErrorState == null;
  }

  void _checkNameValidation() {
    final String? _nameErrorState =
        (state.name == null || state.name!.isEmpty) ? 'お子様の名前を入力してください' : null;
    state = state.copyWith(nameErrorState: _nameErrorState);
  }

  void _checkSchoolValidation() {
    if (state.schoolId != null && state.schoolYear != null) {
      state = state.copyWith(schoolErrorState: null);
      return;
    }

    if (state.schoolId == null && state.schoolYear == null) {
      state = state.copyWith(schoolErrorState: '学校・学年を選択してください');
    } else if (state.schoolId == null) {
      state = state.copyWith(schoolErrorState: '学校を選択してください');
    } else if (state.schoolYear == null) {
      state = state.copyWith(schoolErrorState: '学年を選択してください');
    }
  }
}
