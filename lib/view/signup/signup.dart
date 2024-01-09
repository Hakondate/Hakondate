import 'package:flutter/material.dart';

import 'package:hakondate/view/component/signing_form/name_form.dart';
import 'package:hakondate/view/component/signing_form/school_form.dart';
import 'package:hakondate/view/component/signing_form/submit_button.dart';

class Signup extends StatelessWidget {
  Signup({super.key});

  final GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('お子様の新規登録'),
      ),
      body: Form(
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
    );
  }
}
