import 'package:flutter/material.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/oss_licenses.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/view/component/frame/fade_up_app_bar.dart';

class License extends StatelessWidget {
  const License({super.key});

  @override
  Widget build(BuildContext context) {
    const List<Package> directDependencyLicenses = dependencies;

    return Scaffold(
      backgroundColor: AppColor.ui.white,
      appBar: const FadeUpAppBar(
        title: Text('ライセンス'),
      ),
      body: ListView.separated(
        itemCount: directDependencyLicenses.length,
        separatorBuilder: (_, __) => const Divider(
          height: 0,
        ),
        itemBuilder: (_, int index) {
          final Package package = directDependencyLicenses[index];
          return ListTile(
            title: Text(package.name),
            trailing: const Icon(Icons.chevron_right_rounded),
            onTap: () => routemaster.push(index.toString()),
          );
        },
      ),
    );
  }
}
