import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/state/signup/signup_state.dart';
import 'package:hakondate/view/component/dialog/hakondate_dialog/hakondate_dialog.dart';
import 'package:hakondate/view_model/multi_page/user_view_model.dart';
import 'package:hakondate/view_model/single_page/signup_view_model.dart';

class SigningUpDialog extends ConsumerWidget {
  const SigningUpDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        final store = ref.watch(signupProvider);
        return HakondateDialog(
          title: const Text('確認'),
          body: Padding(
            padding: const EdgeInsets.all(PaddingSize.normal),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: MarginSize.minimum),
                  child: const Text(
                    '以下の内容でお子様を登録します\n'
                        '※ あとで変更することができます',
                  ),
                ),
                DefaultTextStyle(
                  style: TextStyle(
                    color: AppColor.brand.secondary,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    height: 1.4,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text('お名前：　'),
                          Text('学校：　'),
                          Text('学年：　'),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (store is SignupStateData) ...[
                            Text(store.name!),
                            Text(store.schoolTrailing),
                            Text(store.schoolYearTrailing),
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
              ref.read(signupProvider.notifier).signup();
              routemaster.pop().whenComplete(() async => await showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) => _statusDialog(),
              ));
            },
          ),
          secondAction: HakondateActionButton(
            text: const Text('修正する'),
            onTap: () => routemaster.pop(),
          ),
        );
      },
    );
  }

  Widget _statusDialog() {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        final store = ref.watch(signupProvider);
        if (store is SignupStateError) {
          return HakondateDialog(
            title: const Text('登録失敗'),
            body: const Text('ユーザ情報の登録に失敗しました\nもう一度お試しください'),
            firstAction: HakondateActionButton.primary(
              text: const Text('リトライ'),
              onTap: () => ref.read(signupProvider.notifier).retry(),
            ),
          );
        }

        if (store is! SignupStateLoad && ref.watch(userProvider).currentUser != null) {
          return HakondateDialog(
            title: const Text('登録完了'),
            body: const Text('ユーザ情報の登録が成功しました'),
            firstAction: HakondateActionButton.primary(
              text: const Text('はじめる'),
              onTap: () => routemaster.pop().whenComplete(() => routemaster.replace('/splash')),
            ),
          );
        }

        return const HakondateDialog(
          title: Text('登録中'),
          body: Text('ユーザ情報を登録中です'),
        );
      },
    );
  }
}
