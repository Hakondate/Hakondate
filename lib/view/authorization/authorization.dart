import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/state/authorization/authorization_state.dart';
import 'package:hakondate/view_model/single_page/authorization/authorization_view_model.dart';

class Authorization extends ConsumerWidget {
  const Authorization({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<AuthorizationState> state = ref.watch(authorizationViewModelProvider);

    if (state is AsyncLoading) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('招待コード'),
        ),
        body: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColor.brand.secondary),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('招待コード'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('招待コードを入力してください'),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.brand.secondary,
                padding: const EdgeInsets.symmetric(
                  vertical: PaddingSize.buttonVertical,
                  horizontal: PaddingSize.buttonHorizontal,
                ),
                textStyle: TextStyle(
                  color: AppColor.text.white,
                ),
                shape: const StadiumBorder(),
              ),
              onPressed: () => ref.read(authorizationViewModelProvider.notifier).authorize(99, '000000'),
              child: const Text('招待コードを送信'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.brand.secondary,
                padding: const EdgeInsets.symmetric(
                  vertical: PaddingSize.buttonVertical,
                  horizontal: PaddingSize.buttonHorizontal,
                ),
                textStyle: TextStyle(
                  color: AppColor.text.white,
                ),
                shape: const StadiumBorder(),
              ),
              onPressed: () => ref.read(authorizationViewModelProvider.notifier).cancel(),
              child: const Text('キャンセル'),
            ),
          ],
        ),
      ),
    );
  }
}
