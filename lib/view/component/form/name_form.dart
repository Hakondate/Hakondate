import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/state/signup/signup_state.dart';
import 'package:hakondate/view/component/dialog/help_dialog.dart';
import 'package:hakondate/view/component/form/error_indication.dart';
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
                IconButton(
                  icon: const Icon(Icons.help),
                  iconSize: IconSize.help,
                  color: Theme.of(context).primaryIconTheme.color,
                  onPressed: () async => showDialog(
                    context: context,
                    builder: (BuildContext context) => const HelpDialog(
                      title: Text('お名前について'),
                      content: Text('　お名前情報は，本アプリ内でお子様を識別するために利用されます．'
                          'あだ名などを入力していただいても構いません．また，あとで変更することもできます．\n'
                          '　お名前情報は，端末内に保存され収集されることはありません．また，あとから変更することができます．'),
                    ),
                  ),
                ),
                const Spacer(),
                ErrorIndication(errorState: state.nameErrorState),
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
                ref.read(signupViewModelProvider.notifier).updateName(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
