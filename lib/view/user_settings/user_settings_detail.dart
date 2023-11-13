import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/school/school_model.dart';
import 'package:hakondate/state/signup/signup_state.dart';
import 'package:hakondate/state/user_settings/user_settings_state.dart';
import 'package:hakondate/view/component/dialog/help_dialog.dart';
import 'package:hakondate/view/component/frame/fade_up_app_bar.dart';
import 'package:hakondate/view/component/label/setting_label.dart';
import 'package:hakondate/view/signup/signing_up_dialog.dart';
import 'package:hakondate/view/user_settings/user_edit_dialog.dart';
import 'package:hakondate/view_model/single_page/signup/signup_view_model.dart';
import 'package:hakondate/view_model/single_page/user_settings/user_settings_view_model.dart';

class UserSettingsDetail extends ConsumerWidget {
  UserSettingsDetail({super.key});

  final GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<UserSettingsState> userSettingsState =
        ref.watch(userSettingsViewModelProvider);

    return userSettingsState.when(
      loading: () => const SigningUpDialog(),
      error: (Object error, StackTrace? stackTrace) {
        return Center(
          child: Text(error.toString()),
        );
      },
      data: (UserSettingsState userSettingsState) {
        return Scaffold(
          appBar: FadeUpAppBar(
            title: userSettingsState.editingUser == null
                ? const Text('お子様の追加登録')
                : const Text('お子様情報の変更'),
          ),
          body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  _nameForm(),
                  _schoolForm(),
                  _submitButton(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _nameForm() {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        final AsyncValue<SignupState> state =
            ref.watch(signupViewModelProvider);

        return state.when(
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          error: (Object error, StackTrace? stackTrace) {
            return Center(
              child: Text(error.toString()),
            );
          },
          data: (SignupState state) => Padding(
            padding: const EdgeInsets.all(PaddingSize.normal),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    const Text(
                      'お名前',
                      style: TextStyle(fontSize: FontSize.subheading),
                    ),
                    IconButton(
                      icon: const Icon(Icons.help),
                      iconSize: IconSize.help,
                      color: Theme.of(context).primaryIconTheme.color,
                      onPressed: () async => showDialog(
                        context: context,
                        builder: (BuildContext context) => const HelpDialog(
                          title: Text('お名前について'),
                          content: Text('　お名前情報は，本アプリ内でユーザを識別するために利用されます．'
                              'あだ名などを入力していただいても構いません．また，あとで変更することもできます．\n'
                              '　お名前情報は，端末内に保存され収集されることはありません．また，あとから変更することができます．'),
                        ),
                      ),
                    ),
                    const Spacer(),
                    _errorIndication(state.nameErrorState),
                  ],
                ),
                TextFormField(
                  initialValue: state.name,
                  keyboardType: TextInputType.name,
                  maxLength: 15,
                  decoration: InputDecoration(
                    hintText: 'お子様の名前かあだ名を入力',
                    border: const OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColor.brand.secondary,
                        width: 2,
                      ),
                    ),
                  ),
                  onChanged: (String value) {
                    ref
                        .read(signupViewModelProvider.notifier)
                        .updateName(value);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _schoolForm() {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        final AsyncValue<SignupState> state =
            ref.watch(signupViewModelProvider);

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
                        content: Text(
                            '　学校情報は，本アプリ内でお子様の通っている学校の献立を表示するために利用されます．選択肢にない学校は，本アプリ未対応の学校です．\n'
                            '　学年情報は，本アプリ内でお子様の年齢に合わせた情報(栄養基準値など)を表示するために利用されます．\n'
                            '　どちらの情報も，端末内に保存され収集されることはありません．また，あとから変更することができます．'),
                      ),
                    ),
                  ),
                  const Spacer(),
                  if (state is AsyncData<SignupState>)
                    _errorIndication(state.value.schoolErrorState),
                ],
              ),
            ),
            SettingLabel(
              title: '学校',
              dialList: (state is AsyncData<SignupState>)
                  ? state.value.schools
                      .map((SchoolModel school) => school.name)
                      .toList()
                  : <String>[],
              completed: (int index) {
                if (state is! AsyncData<SignupState>) return;
                final int id = state.value.schools[index].id;
                ref.read(signupViewModelProvider.notifier).updateSchool(id);
              },
              trailing: (state is AsyncData<SignupState>)
                  ? state.value.schoolTrailing
                  : '',
            ),
            SettingLabel(
              title: '学年',
              dialList: (state is AsyncData<SignupState>)
                  ? state.value.schoolYears
                  : <String>[],
              completed: (int index) => ref
                  .read(signupViewModelProvider.notifier)
                  .updateSchoolYear(index + 1),
              trailing: (state is AsyncData<SignupState>)
                  ? state.value.schoolYearTrailing
                  : '',
            ),
            const SizedBox(height: PaddingSize.normal),
          ],
        );
      },
    );
  }

  Widget _errorIndication(String? errorState) {
    if (errorState == null || errorState.isEmpty) return Container();

    return Builder(
      builder: (BuildContext context) {
        return Text(
          errorState,
          style: TextStyle(
            fontSize: FontSize.annotation,
            color: Theme.of(context).colorScheme.error,
          ),
        );
      },
    );
  }

  Widget _submitButton() {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        final AsyncValue<UserSettingsState> state =
            ref.watch(userSettingsViewModelProvider);

        return Padding(
          padding: const EdgeInsets.all(PaddingSize.normal),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.brand.secondary,
                  padding: const EdgeInsets.symmetric(
                    vertical: PaddingSize.buttonVertical,
                    horizontal: PaddingSize.buttonHorizontal,
                  ),
                  textStyle: TextStyle(color: AppColor.text.white),
                  shape: const StadiumBorder(),
                ),
                child: const Text('登録する'),
                onPressed: () async {
                  if (ref
                      .read(signupViewModelProvider.notifier)
                      .checkValidation()) {
                    return showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        Widget dialog = const SigningUpDialog();

                        state.whenData((UserSettingsState data) {
                          if (data.editingUser != null) {
                            dialog = const UserEditDialog();
                          }
                        });
                    
                        return dialog;
                      },
                    );
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
