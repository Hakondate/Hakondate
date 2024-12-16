import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate/util/analytics_controller/analytics_controller.dart';

import 'package:hakondate/view/component/signing_form/name_form.dart';
import 'package:hakondate/view/component/signing_form/school_form.dart';
import 'package:hakondate/view/component/signing_form/submit_button.dart';

class Signup extends StatelessWidget {
  Signup({super.key});

  final GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    int tapCounter = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('お子様の新規登録'),
      ),
      body: Stack(
        children: <Widget>[
          Consumer(
            builder: (BuildContext context, WidgetRef ref, _) {
              return GestureDetector(
                onTap: () async {
                  tapCounter++;
                  if (tapCounter > 9) {
                    await ref.read(isDeveloperProvider.notifier).setDeveloper(value: true);
                  }
                },
              );
            },
          ),
          Form(
            key: _formKey,
            child: const SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  NameForm(),
                  SchoolForm(),
                  SubmitButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
