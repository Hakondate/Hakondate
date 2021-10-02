import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/router/app_navigator_state_notifier.dart';
import 'package:hakondate_v2/unit/size.dart';
import 'package:hakondate_v2/view/component/help_dialog.dart';
import 'package:hakondate_v2/view/component/setting_label.dart';
import 'package:hakondate_v2/view_model/single_page/signup_view_model.dart';

class Signup extends ConsumerWidget {
  final GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('お子様の新規登録'),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              _nameForm(context, ref),
              _schoolForm(context, ref),
              _submitButton(context, ref),
            ],
          ),
        ),
      ),
    );
  }

  Widget _nameForm(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.all(PaddingSize.normal),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'お名前',
                style: TextStyle(fontSize: FontSize.subheading),
              ),
              IconButton(
                icon: Icon(Icons.help),
                iconSize: 20,
                color: Theme.of(context).primaryIconTheme.color,
                onPressed: () => HelpDialog(
                  context,
                  title: 'お名前について',
                  content:
                      '　お名前情報は，本アプリ内でユーザを識別するために利用されます．'
                      'あだ名などを入力していただいても構いません．また，あとで変更することもできます．\n'
                      '　お名前情報は，端末内に保存され収集されることはありません．',
                ),
              ),
              Spacer(),
              _errorIndication(context, ref.watch(signupProvider).nameErrorState),
            ],
          ),
          TextFormField(
            keyboardType: TextInputType.name,
            maxLength: 15,
            decoration: InputDecoration(
              hintText: 'お子様の名前かあだ名を入力',
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.secondary,
                    width: 2.0,
                ),
              ),
            ),
            onChanged: (value) => ref.read(signupProvider.notifier).updateName(value),
          ),
        ],
      ),
    );
  }

  Widget _schoolForm(BuildContext context, WidgetRef ref) {
    final store = ref.watch(signupProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(PaddingSize.normal),
          child: Row(
            children: [
              Text(
                '学校・学年',
                style: TextStyle(fontSize: FontSize.subheading),
              ),
              IconButton(
                icon: Icon(Icons.help),
                iconSize: 20,
                color: Theme.of(context).primaryIconTheme.color,
                onPressed: () => HelpDialog(
                  context,
                  title: '学校・学年について',
                  content:
                      '　学校情報は，本アプリ内でお子様の通っている学校の献立を表示するために利用されます．選択肢にない学校は，本アプリ未対応の学校です．\n'
                      '　学年情報は，本アプリ内でお子様の年齢に合わせた情報(栄養基準値など)を表示するために利用されます．\n'
                      '　どちらの情報も，端末内に保存され収集されることはありません．',
                ),
              ),
              Spacer(),
              _errorIndication(context, ref.watch(signupProvider).schoolErrorState),
            ],
          ),
        ),
        SettingLabel(
          title: '学校',
          dialList: store.schools.map((school) => school.name).toList(),
          completed: (index) {
            final int _id = store.schools[index].id;
            ref.read(signupProvider.notifier).updateSchool(_id);
          },
          trailing: store.schoolTrailing,
        ),
        SettingLabel(
          title: '学年',
          dialList: store.schoolYears,
          completed: (index) =>
              ref.read(signupProvider.notifier).updateSchoolYear(index + 1),
          trailing: store.schoolYearTrailing,
        ),
        SizedBox(height: PaddingSize.normal),
      ],
    );
  }

  Widget _errorIndication(BuildContext context, String? errorState) {
    if (errorState == null || errorState.isEmpty) return Container();

    return Text(
      errorState,
      style: TextStyle(
        fontSize: FontSize.indication,
        color: Theme.of(context).errorColor,
      ),
    );
  }

  Widget _submitButton(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.all(PaddingSize.normal),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Theme.of(context).colorScheme.secondary,
                padding: EdgeInsets.symmetric(
                  vertical: PaddingSize.buttonVertical,
                  horizontal: PaddingSize.buttonHorizontal,
                ),
                textStyle: TextStyle(
                    color: Colors.white,
                    fontFamily: 'MPLUSRounded1c'
                ),
                shape: StadiumBorder()
            ),
            child: Text('決定'),
            onPressed: () {
              if (ref.read(signupProvider.notifier).checkValidation()) {
                ref.read(routerProvider.notifier).handleFromSignup();
              }
            },
          ),
        ],
      ),
    );
  }
}
