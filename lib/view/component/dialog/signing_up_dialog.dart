import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/state/signup/signup_state.dart';
import 'package:hakondate/state/user_settings/user_settings_state.dart';
import 'package:hakondate/view/component/dialog/hakondate_dialog/hakondate_dialog.dart';
import 'package:hakondate/view_model/multi_page/user/user_view_model.dart';
import 'package:hakondate/view_model/single_page/signup/signup_view_model.dart';
import 'package:hakondate/view_model/single_page/user_settings/user_settings_view_model.dart';

class SigningUpDialog extends ConsumerWidget {
  const SigningUpDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<SignupState> signupState = ref.watch(signupViewModelProvider);
    final AsyncValue<UserSettingsState> userSettingsState = ref.watch(userSettingsViewModelProvider);
    final bool isEditing = userSettingsState is AsyncData<UserSettingsState> && userSettingsState.value.editingUser != null;

    return HakondateDialog(
      title: const Text('確認'),
      body: Padding(
        padding: const EdgeInsets.all(PaddingSize.normal),
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(vertical: MarginSize.minimum),
              child: Text(
                isEditing
                    ? '以下の内容でお子様の変更を登録します'
                    : '以下の内容でお子様を登録します\n'
                        '※ あとで変更することができます',
              ),
            ),
            DefaultTextStyle(
              style: TextStyle(
                color: AppColor.brand.secondary,
                fontWeight: FontWeight.bold,
                fontSize: 16,
                height: 1.4,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text('お名前：　'),
                      Text('学校：　'),
                      Text('学年：　'),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      if (signupState is AsyncData<SignupState>) ...<Widget>[
                        Text(signupState.value.lastName! + signupState.value.firstName!),
                        Text(signupState.value.schoolTrailing),
                        Text(signupState.value.schoolYearTrailing),
                      ],
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      firstAction: HakondateActionButton.primary(
        text: const Text('登録する'),
        onTap: () async {
          if (isEditing) {
            await ref.read(signupViewModelProvider.notifier).edit();
          } else {
            await ref.read(signupViewModelProvider.notifier).signup();
          }
          await routemaster.pop().whenComplete(
                () async => showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) => _statusDialog(),
                ),
              );
        },
      ),
      secondAction: HakondateActionButton(
        text: const Text('修正する'),
        onTap: routemaster.pop,
      ),
    );
  }

  Widget _statusDialog() {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        final AsyncValue<SignupState> state = ref.watch(signupViewModelProvider);
        if (state is AsyncError<SignupState>) {
          return HakondateDialog(
            title: const Text('登録失敗'),
            body: const Text('お子様情報の登録に失敗しました\nもう一度お試しください'),
            firstAction: HakondateActionButton.primary(
              text: const Text('リトライ'),
              onTap: () => ref.read(signupViewModelProvider.notifier).retry(),
            ),
          );
        }

        if (state is! AsyncLoading<SignupState> && ref.watch(userViewModelProvider).currentUser != null) {
          return HakondateDialog(
            title: const Text('登録完了'),
            body: const Text('お子様情報の登録が成功しました'),
            firstAction: HakondateActionButton.primary(
              text: const Text('はじめる'),
              onTap: () => routemaster.pop().whenComplete(() => routemaster.replace('/splash')),
            ),
          );
        }

        return const HakondateDialog(
          title: Text('登録中'),
          body: Text('お子様情報を登録中です'),
        );
      },
    );
  }
}
