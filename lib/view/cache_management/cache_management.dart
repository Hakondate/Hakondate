import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate/repository/local/directory/open_data_recipes/open_data_recipes_local_repository.dart';

import 'package:hakondate/view/component/frame/fade_up_app_bar.dart';

class CacheManagement extends ConsumerWidget {
  const CacheManagement({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const FadeUpAppBar(title: Text('キャッシュの管理')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              onTap: () => ref.read(openDataRecipesLocalRepositoryProvider).deleteAll(),
              title: Text('すべてのレシピのキャッシュを削除'),
            )
          ],
        ),
      ),
    );
  }
}
