import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/school/school_model.dart';
import 'package:hakondate/state/signup/signup_state.dart';
import 'package:hakondate/view/component/dialog/help_dialog.dart';
import 'package:hakondate/view/component/label/setting_label.dart';
import 'package:hakondate/view/component/signing_form/error_indication.dart';
import 'package:hakondate/view_model/single_page/signup/signup_view_model.dart';

class SchoolForm extends ConsumerWidget {
  const SchoolForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<SignupState> state = ref.watch(signupViewModelProvider);

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
              IconButton(
                icon: const Icon(Icons.help),
                iconSize: IconSize.help,
                color: Theme.of(context).primaryIconTheme.color,
                onPressed: () async => showDialog(
                  context: context,
                  builder: (BuildContext context) => const HelpDialog(
                    title: Text('学校・学年について'),
                    content: Text('　学校情報は，本アプリ内でお子様の通っている学校の献立を表示するために利用されます．選択肢にない学校は，本アプリ未対応の学校です．\n'
                        '　学年情報は，本アプリ内でお子様の年齢に合わせた情報(栄養基準値など)を表示するために利用されます．\n'
                        '　どちらの情報も，端末内に保存され収集されることはありません．また，あとから変更することができます．'),
                  ),
                ),
              ),
              const Spacer(),
              if (state is AsyncData<SignupState>) ErrorIndication(errorState: state.value.schoolErrorState),
            ],
          ),
        ),
        SettingLabel(
          title: '学校',
          dialList: (state is AsyncData<SignupState>)
              ? state.value.schools.map((SchoolModel school) => school.name).toList()
              : <String>[],
          completed: (int index) {
            if (state is! AsyncData<SignupState>) return;
            final int id = state.value.schools[index].id;
            ref.read(signupViewModelProvider.notifier).updateSchool(id);
          },
          trailing: (state is AsyncData<SignupState>) ? state.value.schoolTrailing : '',
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
