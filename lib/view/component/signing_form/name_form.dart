import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/state/signup/signup_state.dart';
import 'package:hakondate/view/component/button/help_button.dart';
import 'package:hakondate/view/component/signing_form/error_indication.dart';
import 'package:hakondate/view/help/help_frame.dart';
import 'package:hakondate/view_model/single_page/signup/signup_view_model.dart';

class NameForm extends ConsumerWidget {
  const NameForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<SignupState> state = ref.watch(signupViewModelProvider);

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
                HelpButton(
                  helpFrame: <HelpFrame>[HelpFrame.nickName()],
                  key: key,
                ),
                const Spacer(),
                ErrorIndication(errorState: state.nameErrorState),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 41 / 100,
                    child: TextFormField(
                      initialValue: state.lastName,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: '姓',
                        border: const OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.brand.secondary,
                            width: 2,
                          ),
                        ),
                      ),
                      onChanged: (String value) {
                        ref.read(signupViewModelProvider.notifier).updateLastName(value);
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 41 / 100,
                    child: TextFormField(
                      initialValue: state.firstName,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: '名',
                        border: const OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColor.brand.secondary,
                            width: 2,
                          ),
                        ),
                      ),
                      onChanged: (String value) {
                        ref.read(signupViewModelProvider.notifier).updateFirstName(value);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
