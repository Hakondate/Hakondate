import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/router/app_navigator_state_notifier.dart';
import 'package:hakondate_v2/unit/size.dart';
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
                onPressed: () {},
              ),
              Spacer(),
              _nameErrorIndication(context, ref),
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
                    color: Theme.of(context).accentColor,
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
                onPressed: () {},
              ),
              Spacer(),
              _schoolErrorIndication(context, ref),
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

  Widget _nameErrorIndication(BuildContext context, WidgetRef ref) {
    if (ref.watch(signupProvider).nameErrorState != null)
      return Padding(
        padding: EdgeInsets.all(PaddingSize.normal),
        child: Text(
          ref.watch(signupProvider).nameErrorState!,
          style: TextStyle(
            fontSize: 12,
            color: Theme.of(context).errorColor,
          ),
        ),
      );
    return Container();
  }

  Widget _schoolErrorIndication(BuildContext context, WidgetRef ref) {
    if (ref.watch(signupProvider).schoolErrorState != null)
      return Padding(
        padding: EdgeInsets.all(PaddingSize.normal),
        child: Text(
          ref.watch(signupProvider).schoolErrorState!,
          style: TextStyle(
            fontSize: 12,
            color: Theme.of(context).errorColor,
          ),
        ),
      );
    return Container();
  }

  Widget _submitButton(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.all(PaddingSize.normal),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Theme.of(context).accentColor,
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
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
