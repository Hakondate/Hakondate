import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/state/signup/signup_state.dart';
import 'package:hakondate/view/component/dialog/hakondate_dialog/hakondate_dialog.dart';
import 'package:hakondate/view/component/dialog/help_dialog.dart';
import 'package:hakondate/view/component/label/setting_label.dart';
import 'package:hakondate/view/signup/signing_up_dialog.dart';
import 'package:hakondate/view_model/single_page/signup_view_model.dart';

class Signup extends StatelessWidget {
  Signup({super.key});

  final GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('お子様の新規登録'),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              _nameForm(),
              _schoolForm(),
              _submitButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _nameForm() {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        final store = ref.watch(signupProvider);

        return Padding(
          padding: const EdgeInsets.all(PaddingSize.normal),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    'お名前',
                    style: TextStyle(fontSize: FontSize.subheading),
                  ),
                  IconButton(
                    icon: const Icon(Icons.help),
                    iconSize: IconSize.help,
                    color: Theme.of(context).primaryIconTheme.color,
                    onPressed: () => showDialog(
                      context: context,
                      builder: (BuildContext context) => const HelpDialog(
                        title: Text('お名前について'),
                        content: Text(
                            '　お名前情報は，本アプリ内でユーザを識別するために利用されます．'
                            'あだ名などを入力していただいても構いません．また，あとで変更することもできます．\n'
                            '　お名前情報は，端末内に保存され収集されることはありません．また，あとから変更することができます．'
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  if (store is SignupStateData) _errorIndication(store.nameErrorState),
                ],
              ),
              TextFormField(
                initialValue: (store is SignupStateData) ? store.name : '',
                keyboardType: TextInputType.name,
                maxLength: 15,
                decoration: InputDecoration(
                  hintText: 'お子様の名前かあだ名を入力',
                  border: const OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.brand.secondary,
                      width: 2.0,
                    ),
                  ),
                ),
                onChanged: (value) => ref.read(signupProvider.notifier).updateName(value),
              ),
            ],
          ),
        );
      }
    );
  }

  Widget _schoolForm() {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        final store = ref.watch(signupProvider);

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(PaddingSize.normal),
              child: Row(
                children: [
                  const Text(
                    '学校・学年',
                    style: TextStyle(fontSize: FontSize.subheading),
                  ),
                  IconButton(
                    icon: const Icon(Icons.help),
                    iconSize: IconSize.help,
                    color: Theme.of(context).primaryIconTheme.color,
                    onPressed: () => showDialog(
                      context: context,
                      builder: (BuildContext context) => const HelpDialog(
                        title: Text('学校・学年について'),
                        content: Text(
                            '　学校情報は，本アプリ内でお子様の通っている学校の献立を表示するために利用されます．選択肢にない学校は，本アプリ未対応の学校です．\n'
                            '　学年情報は，本アプリ内でお子様の年齢に合わせた情報(栄養基準値など)を表示するために利用されます．\n'
                            '　どちらの情報も，端末内に保存され収集されることはありません．また，あとから変更することができます．'
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  if (store is SignupStateData) _errorIndication(store.schoolErrorState),
                ],
              ),
            ),
            SettingLabel(
              title: '学校',
              dialList: (store is SignupStateData) ? store.schools.map((school) => school.name).toList() : [],
              completed: (index) {
                if (store is! SignupStateData) return;
                final int _id = store.schools[index].id;
                ref.read(signupProvider.notifier).updateSchool(_id);
              },
              trailing: (store is SignupStateData) ? store.schoolTrailing : '',
            ),
            SettingLabel(
              title: '学年',
              dialList: (store is SignupStateData) ? store.schoolYears : [],
              completed: (index) => ref.read(signupProvider.notifier).updateSchoolYear(index + 1),
              trailing: (store is SignupStateData) ? store.schoolYearTrailing : '',
            ),
            const SizedBox(height: PaddingSize.normal),
          ],
        );
      }
    );
  }

  Widget _errorIndication(String? errorState) {
    if (errorState == null || errorState.isEmpty) return Container();

    return Builder(
      builder: (BuildContext context) {
        return Text(
          errorState,
          style: TextStyle(
            fontSize: FontSize.indication,
            color: Theme.of(context).errorColor,
          ),
        );
      }
    );
  }

  Widget _submitButton() {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        return Padding(
          padding: const EdgeInsets.all(PaddingSize.normal),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: AppColor.brand.secondary,
                  padding: const EdgeInsets.symmetric(
                    vertical: PaddingSize.buttonVertical,
                    horizontal: PaddingSize.buttonHorizontal,
                  ),
                  textStyle: TextStyle(color: AppColor.text.white),
                  shape: const StadiumBorder(),
                ),
                child: const Text('登録する'),
                onPressed: () async {
                  if (ref.read(signupProvider.notifier).checkValidation()) {
                    await showDialog(
                      context: context,
                      builder: (BuildContext context) => const SigningUpDialog(),
                    );
                  }
                },
              ),
            ],
          ),
        );
      }
    );
  }
}
