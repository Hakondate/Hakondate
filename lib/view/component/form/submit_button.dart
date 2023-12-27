import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/view/component/dialog/signing_up_dialog.dart';
import 'package:hakondate/view_model/single_page/signup/signup_view_model.dart';

class SubmitButton extends ConsumerWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              if (ref.read(signupViewModelProvider.notifier).checkValidation()) {
                return showDialog(
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
}
