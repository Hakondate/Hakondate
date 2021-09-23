import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/model/school/school_model.dart';
import 'package:hakondate_v2/state/signup/signup_state.dart';
import 'package:hakondate_v2/repository/local/school_local_repository.dart';

final signupProvider = StateNotifierProvider<SignupViewModel, SignupState>(
    (ref) => SignupViewModel());

class SignupViewModel extends StateNotifier<SignupState> {
  SignupViewModel() : super(SignupState()) {
    this._schoolLocalRepository = SchoolLocalRepository();
    _initialize();
  }

  late final SchoolLocalRepository _schoolLocalRepository;

  Future<void> _initialize() async {
    final List<SchoolModel> schools = await _schoolLocalRepository.getAllSchool();
    state = state.copyWith(schools: schools);
  }

  void updateName(String name) => state = state.copyWith(name: name);

  Future<void> updateSchool(int id) async {
    final SchoolModel school = await _schoolLocalRepository.getSchoolById(id);
    final List<String> schoolYears = (school.classification == 1)
        ? ['1年生', '2年生', '3年生', '4年生', '5年生', '6年生']
        : ['1年生', '2年生', '3年生'];
    state = state.copyWith(
      schoolId: id,
      schoolYears: schoolYears,
      schoolTrailing: school.name,
    );
  }

  void updateSchoolYear(int year) =>
      state = state.copyWith(schoolYear: year, schoolYearTrailing: '$year年生');
}
