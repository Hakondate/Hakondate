import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/model/user/user_model.dart';
import 'package:hakondate/state/help/help_state.dart';
import 'package:hakondate/state/user/user_state.dart';
import 'package:hakondate/util/exception/sign_in_exception.dart';
import 'package:hakondate/view_model/multi_page/user/user_view_model.dart';

part 'help_view_model.g.dart';

@riverpod
class HelpViewModel extends _$HelpViewModel {
  @override
  Future<HelpState> build() async {
    final UserModel? user = ref.watch(userViewModelProvider).currentUser;

    if (user == null) throw const SignInException('Current user does not exist');

    final SchoolGrade schoolGrade = await ref.read(userViewModelProvider.notifier).getSchoolGrade(user.id);

    return HelpState(
      schoolGrade: schoolGrade,
    );
  }
}
