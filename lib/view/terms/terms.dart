import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate/constant/app_color.dart';

import 'package:hakondate/router/routes.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/view/terms/terms_content_column.dart';
import 'package:hakondate/view_model/single_page/terms_view_model.dart';

class Terms extends StatelessWidget {
  const Terms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('利用規約'),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          vertical: MarginSize.normalVertical,
          horizontal: MarginSize.normalHorizontal,
        ),
        child: Column(
          children: [
            const Text(
              '　以下の利用規約に同意の上，はこんだてをご利用ください．',
              style: TextStyle(fontSize: FontSize.body),
            ),
            const SizedBox(height: SpaceSize.paragraph),
            _termsCard(),
            const SizedBox(height: SpaceSize.paragraph),
            _agreeRow(),
          ],
        ),
      ),
    );
  }

  Widget _termsCard() {
    return const Expanded(
      child: Card(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(PaddingSize.normal),
          child: TermsContentColumn(),
        ),
      ),
    );
  }

  Widget _agreeRow() {
    return Consumer(
      builder: (_, WidgetRef ref, __) {
        final store = ref.watch(termsProvider);

        return Container(
          margin: const EdgeInsets.all(MarginSize.minimum),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                activeColor: AppColor.brand.secondary,
                value: store.isAgree,
                onChanged: (_) => ref.read(termsProvider.notifier).onTap(),
              ),
              const Text(
                '利用規約に同意する',
                style: TextStyle(fontSize: FontSize.body),
              ),
              const Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: AppColor.brand.secondary,
                  padding: const EdgeInsets.symmetric(
                    vertical: PaddingSize.buttonVertical,
                    horizontal: PaddingSize.buttonHorizontal,
                  ),
                  textStyle: TextStyle(
                    color: AppColor.text.white,
                  ),
                  shape: const StadiumBorder(),
                ),
                child: const Text('はじめる'),
                onPressed: store.isAgree
                    ? () => routemaster.replace('/signup')
                    : null,
              ),
            ],
          ),
        );
      }
    );
  }
}
