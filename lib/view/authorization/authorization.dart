import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/state/authorization/authorization_state.dart';
import 'package:hakondate/view/component/dialog/signing_up_dialog.dart';
import 'package:hakondate/view/component/frame/fade_up_app_bar.dart';
import 'package:hakondate/view/component/label/description_text.dart';
import 'package:hakondate/view_model/single_page/authorization/authorization_view_model.dart';

class Authorization extends ConsumerWidget {
  const Authorization({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<AuthorizationState> state = ref.watch(authorizationViewModelProvider);

    return Stack(
      children: <Widget>[
        const AuthorizationPage(),
        if (state is AsyncLoading<AuthorizationState>) const AuthorizationLoadingPage(),
        if (state is AsyncError<AuthorizationState>) const AuthorizationErrorPage(),
      ],
    );
  }
}

class AuthorizationPage extends ConsumerWidget {
  const AuthorizationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<AuthorizationState> state = ref.watch(authorizationViewModelProvider);
    final bool onHomeAuthorization = routemaster.currentConfiguration!.path.startsWith('/home/authorization');

    return Scaffold(
      appBar: onHomeAuthorization
          ? const FadeUpAppBar(
              title: Text('招待コード'),
            )
          : AppBar(
              title: const Text('招待コード'),
            ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 32),
            Row(
              children: <Widget>[
                const SizedBox(width: 16),
                Flexible(
                  child: DescriptionText.body(
                    label: '　この学校の給食を見るには招待コードの入力が必要です．招待コードは学校から案内がございます．給食だより等をご確認ください．',
                  ),
                ),
                const SizedBox(width: 16),
              ],
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  '登録する学校：',
                  style: TextStyle(
                    fontSize: FontSize.status,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  state.when(
                    data: (AuthorizationState data) => data.school.name,
                    loading: () => '',
                    error: (Object error, StackTrace? stackTrace) => '',
                  ),
                  style: const TextStyle(
                    fontSize: FontSize.status,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            const Text(
              '招待コードを入力してください',
              style: TextStyle(
                fontSize: FontSize.body,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: <Widget>[
                const SizedBox(width: 32),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      PinCodeTextField(
                        autoDisposeControllers: false,
                        appContext: context,
                        pastedTextStyle: TextStyle(
                          color: Colors.green.shade600,
                          fontWeight: FontWeight.bold,
                        ),
                        length: 6,
                        animationType: AnimationType.none,
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(5),
                          fieldHeight: 50,
                          fieldWidth: 40,
                          activeColor: Colors.grey,
                          selectedColor: AppColor.brand.secondary,
                          inactiveColor: Colors.grey,
                        ),
                        onChanged: (String value) {
                          ref.read(authorizationViewModelProvider.notifier).onCodeChanged(value);
                        },
                        onCompleted: (_) async {
                          final bool result = await ref.read(authorizationViewModelProvider.notifier).authorize();

                          if (!result) return;

                          if (routemaster.currentConfiguration!.path.startsWith('/home/authorization')) {
                            await routemaster.pop();
                            return;
                          }

                          if (!context.mounted) return;

                          return showDialog(
                            context: context,
                            builder: (BuildContext context) => const SigningUpDialog(),
                          );
                        },
                      ),
                      const SizedBox(height: 8),
                      Text(
                        state.when(
                          data: (AuthorizationState data) => data.statusMessage,
                          loading: () => '',
                          error: (Object error, StackTrace? stackTrace) => 'エラーが発生しました。\n時間をおいて再度お試しください。',
                        ),
                        style: TextStyle(
                          color: state.when(
                            data: (AuthorizationState data) => data.statusMessage == '成功しました' ? Colors.green : Colors.red,
                            loading: () => Colors.white,
                            error: (Object error, StackTrace? stackTrace) => Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 32),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AuthorizationLoadingPage extends StatelessWidget {
  const AuthorizationLoadingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: ColoredBox(
        color: AppColor.brand.secondaryLight.withOpacity(0.9),
        child: Center(
          child: Text(
            '招待コードを確認中です・・・',
            style: TextStyle(
              color: AppColor.text.white,
              fontWeight: FontWeight.bold,
              fontSize: 22,
              decoration: TextDecoration.none, // なぜか全体のテーマがきかず下線がついてしまうので追加した
              fontFamily: 'MPLUSRounded1c', // TextDecoration.none を追加するとフォントが変わってしまうので追加
            ),
          ),
        ),
      ),
    );
  }
}

class AuthorizationErrorPage extends StatelessWidget {
  const AuthorizationErrorPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('招待コード'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('エラーが発生しました。\n時間をおいて再度お試しください。'),
          ],
        ),
      ),
    );
  }
}
