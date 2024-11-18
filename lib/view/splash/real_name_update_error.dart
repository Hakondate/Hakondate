import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/state/splash/splash_state.dart';
import 'package:hakondate/util/app_unique_key/app_unique_key.dart';
import 'package:hakondate/util/exception/connection_exception.dart';
import 'package:hakondate/view/component/dialog/exception_dialog/connection_exception_dialog.dart';
import 'package:hakondate/view/component/dialog/exception_dialog/local_database_exception_dialog.dart';
import 'package:hakondate/view/component/frame/stateful_wrapper.dart';
import 'package:hakondate/view/splash/terms_updated_dialog.dart';
import 'package:hakondate/view_model/single_page/splash/splash_view_model.dart';

class RealNameUpdateError extends StatelessWidget {
  const RealNameUpdateError({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.brand.secondaryLight,
      body: const Center(
        child: Text('OMG😱'),
      ),
    );
  }
}
