import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/state/user_settings/user_settings_state.dart';
import 'package:hakondate/view/component/dialog/signing_up_dialog.dart';
import 'package:hakondate/view/component/frame/fade_up_app_bar.dart';
import 'package:hakondate/view/component/signing_form/name_form.dart';
import 'package:hakondate/view/component/signing_form/school_form.dart';
import 'package:hakondate/view/component/signing_form/submit_button.dart';
import 'package:hakondate/view_model/single_page/user_settings/user_settings_view_model.dart';

class UserSettingsDetail extends ConsumerWidget {
  UserSettingsDetail({super.key});

  final GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<UserSettingsState> userSettingsState = ref.watch(userSettingsViewModelProvider);

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
            title: userSettingsState.editingUser == null ? const Text('お子様の追加登録') : const Text('お子様情報の変更'),
          ),
          body: Form(
            key: _formKey,
            child: const SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  NameForm(),
                  SchoolForm(),
                  SubmitButton(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
