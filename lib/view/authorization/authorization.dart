import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/state/signup/signup_state.dart';
import 'package:hakondate/view/component/dialog/signing_up_dialog.dart';
import 'package:hakondate/view/component/label/description_text.dart';
import 'package:hakondate/view_model/single_page/signup/signup_view_model.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/state/authorization/authorization_state.dart';
import 'package:hakondate/view_model/single_page/authorization/authorization_view_model.dart';

class Authorization extends ConsumerWidget {
  const Authorization({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<AuthorizationState> state = ref.watch(authorizationViewModelProvider);
    final TextEditingController authorizationCodeController = ref.watch(authorizationCodeControllerProvider);
    final AsyncValue<SignupState> sginupState = ref.watch(signupViewModelProvider);

    return state.when(
      data: (AuthorizationState data) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('招待コードの登録'),
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
                      sginupState.value!.schoolTrailing,
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
                            controller: authorizationCodeController,
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
                              selectedColor: Colors.orange,
                              inactiveColor: Colors.grey,
                            ),
                            onChanged: (_) {
                              ref.read(authorizationViewModelProvider.notifier).onCodeChanged();
                            },
                          ),
                          const SizedBox(height: 8),
                          Text(
                            data.statusMessage,
                            style: TextStyle(
                              color: data.statusMessage == '認証に成功しました' ? Colors.orange : Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 32),
                  ],
                ),
                Center(
                  child: ElevatedButton(
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
                      final bool result =
                          await ref.read(authorizationViewModelProvider.notifier).authorize(authorizationCodeController.text);

                      if (!result) return;

                      if (routemaster.currentConfiguration!.path.startsWith('/home/daily')) {
                        routemaster.push('/home');
                      }

                      if (!context.mounted) return;

                      return showDialog(
                        context: context,
                        builder: (BuildContext context) => const SigningUpDialog(),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
      error: (Object error, StackTrace stackTrace) => const AuthorizationErrorPage(),
      loading: () => const AuthorizationLoadingPage(),
    );
  }
}

class AuthorizationLoadingPage extends StatelessWidget {
  const AuthorizationLoadingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.brand.secondaryLight,
      body: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '招待コードを確認中です・・・',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ],
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
            Text('エラーが発生しました'),
          ],
        ),
      ),
    );
  }
}
