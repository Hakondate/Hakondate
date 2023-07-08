// import 'dart:async';

// import 'package:flutter/material.dart';

// import 'package:flutter_riverpod/flutter_riverpod.dart';

// import 'package:hakondate/model/school/school_model.dart';
// import 'package:hakondate/model/user/user_model.dart';
// import 'package:hakondate/repository/local/sqlite/schools/schools_local_repository.dart';
// import 'package:hakondate/repository/local/sqlite/users/users_local_repository.dart';
// import 'package:hakondate/state/signup/signup_state.dart';
// import 'package:hakondate/util/exception/parameters_exception.dart';
// import 'package:hakondate/view_model/multi_page/user/user_view_model.dart';

// final AutoDisposeAsyncNotifierProviderFamily<SignupViewModel, SignupState, int?>
//     signupProvider = AsyncNotifierProvider.autoDispose
//         .family<SignupViewModel, SignupState, int?>(() {
//   return SignupViewModel();
// });

// class SignupViewModel
//     extends AutoDisposeFamilyAsyncNotifier<SignupState, int?> {
//   SignupViewModel() : super();

//   @override
//   FutureOr<SignupState> build(int? id) async {
//     final List<SchoolModel> schools =
//         await _ref.read(schoolsLocalRepositoryProvider).getAll();

//     if (id == null) return SignupState(schools: schools);

//     final UserModel user =
//         await _ref.read(usersLocalRepositoryProvider).getById(id!);

//     return SignupState(
//       schools: schools,
//       name: user.name,
//       schoolId: user.schoolId,
//       schoolYear: user.schoolYear,
//     );
//   }

//   Future<void> signup() async {
//     final AsyncValue<SignupState> cache = state;

//     cache.whenData((SignupState data) async {
//       state = const AsyncLoading<SignupState>();

//       final String? name = data.name;
//       final int? schoolId = data.schoolId;
//       final int? schoolYear = data.schoolYear;

//       try {
//         if (name == null || schoolId == null || schoolYear == null) {
//           throw const ParametersException('Do not allow Null parameter');
//         }

//         await ref.read(userProvider.notifier).createUser(
//               name: name,
//               schoolId: schoolId,
//               schoolYear: schoolYear,
//             );
//         state = cache;
//       } on Exception catch (error, stack) {
//         debugPrint(error.toString());
//         debugPrint(stack.toString());
//         state = AsyncError<SignupState>(error, stack).copyWithPrevious(cache);
//       }
//     });
//   }

//   Future<void> retry() async {
//     final AsyncValue<SignupState> cache = state;
//     if (cache is! AsyncError) return;

//     state = AsyncData<SignupState>(cache.valueOrNull!);

//     await signup();
//   }

//   void updateName(String? name) {
//     state.whenData((SignupState data) =>
//         state = AsyncData<SignupState>(data.copyWith(name: name)));
//   }

//   Future<void> updateSchool(int id) async {
//     state.whenData((SignupState data) async {
//       final SchoolModel school =
//           await _ref.read(schoolsLocalRepositoryProvider).getById(id);
//       final List<String> schoolYears =
//           (school.classification == SchoolClassification.primary)
//               ? <String>['1年生', '2年生', '3年生', '4年生', '5年生', '6年生']
//               : <String>['1年生', '2年生', '3年生'];
//       if (data.schoolYear != null &&
//           data.schoolYear! > 3 &&
//           school.classification == SchoolClassification.secondary) {
//         state = AsyncData<SignupState>(
//           data.copyWith(
//             schoolId: id,
//             schoolYear: 3,
//             schoolYears: schoolYears,
//             schoolTrailing: school.name,
//             schoolYearTrailing: '3年生',
//           ),
//         );
//       } else {
//         state = AsyncData<SignupState>(
//           data.copyWith(
//             schoolId: id,
//             schoolYears: schoolYears,
//             schoolTrailing: school.name,
//           ),
//         );
//       }
//     });
//   }

//   void updateSchoolYear(int year) {
//     state.whenData(
//       (SignupState data) => state = AsyncData<SignupState>(
//         data.copyWith(
//           schoolYear: year,
//           schoolYearTrailing: '$year年生',
//         ),
//       ),
//     );
//   }

//   bool checkValidation() {
//     _checkNameValidation();
//     _checkSchoolValidation();

//     return state.maybeWhen(
//       data: (SignupState data) =>
//           data.nameErrorState == null && data.schoolErrorState == null,
//       orElse: () => false,
//     );
//   }

//   void _checkNameValidation() {
//     state.whenData((SignupState data) {
//       final String? nameErrorState =
//           (data.name == null || data.name!.isEmpty) ? 'お子様の名前を入力してください' : null;
//       state =
//           AsyncData<SignupState>(data.copyWith(nameErrorState: nameErrorState));
//     });
//   }

//   void _checkSchoolValidation() {
//     state.whenData((SignupState data) {
//       if (data.schoolId != null && data.schoolYear != null) {
//         state = AsyncData<SignupState>(data.copyWith(schoolErrorState: null));
//         return;
//       }

//       if (data.schoolId == null && data.schoolYear == null) {
//         state = AsyncData<SignupState>(
//             data.copyWith(schoolErrorState: '学校・学年を選択してください'));
//       } else if (data.schoolId == null) {
//         state = AsyncData<SignupState>(
//             data.copyWith(schoolErrorState: '学校を選択してください'));
//       } else if (data.schoolYear == null) {
//         state = AsyncData<SignupState>(
//             data.copyWith(schoolErrorState: '学年を選択してください'));
//       }
//     });
//   }
// }
