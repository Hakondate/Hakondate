import 'package:flutter/material.dart';

import 'package:hakondate/constant/oss_licenses.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/view/component/frame/fade_up_app_bar.dart';

class LicenseDetail extends StatelessWidget {
  const LicenseDetail({
    required this.index,
    super.key,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    final Package package = ossLicenses.where(
          (Package package) => package.isDirectDependency,
    ).toList()[index];

    return Scaffold(
      appBar: FadeUpAppBar(
        title: Text(package.name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PaddingSize.normal),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('version: ${package.version}'),
              const Divider(),
              Text(package.description),
              const Divider(),
              Text(package.license ?? ''),
            ],
          ),
        ),
      ),
    );
  }
}
