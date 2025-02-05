import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/school/school_model.dart';
import 'package:hakondate/state/signup/signup_state.dart';
import 'package:hakondate/state/user_settings/user_settings_state.dart';
import 'package:hakondate/view/component/button/help_button.dart';
import 'package:hakondate/view/component/label/setting_label.dart';
import 'package:hakondate/view/component/signing_form/error_indication.dart';
import 'package:hakondate/view/help/help_frame.dart';
import 'package:hakondate/view_model/single_page/signup/signup_view_model.dart';
import 'package:hakondate/view_model/single_page/user_settings/user_settings_view_model.dart';

class SchoolForm extends ConsumerWidget {
  const SchoolForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<SignupState> state = ref.watch(signupViewModelProvider);
    final AsyncValue<UserSettingsState> userSettingsState = ref.watch(userSettingsViewModelProvider);
    final bool isEditing = userSettingsState is AsyncData<UserSettingsState> && userSettingsState.value.editingUser != null;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(PaddingSize.normal),
          child: Row(
            children: <Widget>[
              const Text(
                '学校・学年',
                style: TextStyle(fontSize: FontSize.subheading),
              ),
              HelpButton(
                helpFrame: <HelpFrame>[HelpFrame.schoolAndSchoolYear(), HelpFrame.input()],
                key: key,
              ),
              const Spacer(),
              if (state is AsyncData<SignupState>) ErrorIndication(errorState: state.value.schoolErrorState),
            ],
          ),
        ),
        SettingLabel(
          title: '学校',
          dialList: (state is AsyncData<SignupState>) ? state.value.schools.map((SchoolModel school) => school.name).toList() : <String>[],
          completed: (int index) {
            if (state is! AsyncData<SignupState>) return;
            final int id = state.value.schools[index].id;
            ref.read(signupViewModelProvider.notifier).updateSchool(id);
          },
          trailing: (state is AsyncData<SignupState>) ? state.value.schoolTrailing : '',
          disabled: isEditing,
        ),
        SettingLabel(
          title: '学年',
          dialList: (state is AsyncData<SignupState>) ? state.value.schoolYears : <String>[],
          completed: (int index) => ref.read(signupViewModelProvider.notifier).updateSchoolYear(index + 1),
          trailing: (state is AsyncData<SignupState>) ? state.value.schoolYearTrailing : '',
        ),
        const SizedBox(height: PaddingSize.normal),
      ],
    );
  }
}
