import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/repository/local/directory/open_data_recipes/open_data_recipes_local_repository.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/view/component/dialog/hakondate_dialog/hakondate_dialog.dart';
import 'package:hakondate/view/component/frame/fade_up_app_bar.dart';

class CacheManagement extends ConsumerWidget {
  const CacheManagement({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColor.ui.background,
      appBar: const FadeUpAppBar(title: Text('キャッシュの管理')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: AppColor.ui.white,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: ListTile(
                  onTap: () async {
                    await ref.read(openDataRecipesLocalRepositoryProvider).deleteAll();
                    await showDialog<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return HakondateDialog(
                          title: const Text("削除完了"),
                          body: const Padding(
                            padding: EdgeInsets.all(PaddingSize.normal),
                            child: Text("レシピのキャッシュを削除しました。"),
                          ),
                          firstAction: HakondateActionButton.primary(
                            text: const Text('確認'),
                            onTap: () => routemaster.pop(context),
                          ),
                        );
                      },
                    );
                  },
                  title: Center(
                    child: const Text(
                      'すべてのレシピのキャッシュを削除',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
