import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/router/app_navigator_state_notifier.dart';
import 'package:hakondate_v2/unit/size.dart';
import 'package:hakondate_v2/view/component/setting_label.dart';
import 'package:hakondate_v2/view_model/single_page/signup_view_model.dart';

class Signup extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GlobalKey _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: Text('お子様の新規登録'),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              _nameForm(context),
              _schoolForm(context, ref),
            ],
          ),
        ),
      ),
    );
  }

  Widget _nameForm(BuildContext context) {
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
            onSaved: null,
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
      ],
    );
  }
}
