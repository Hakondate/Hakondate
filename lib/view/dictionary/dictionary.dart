import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/dictionary/dictionary_item_model.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/view/dictionary/dictionary_grid.dart';
import 'package:hakondate/view_model/single_page/dictionary/dictionary_view_model.dart';

class Dictionary extends ConsumerWidget {
  const Dictionary({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ずかん'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: ()  {
              ref.read(dictionaryViewModelProvider.notifier).getSearchedList('');
              routemaster.push('/home/dictionary/search');
            },
          ),
        ],
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(MarginSize.minimumGrid),
        mainAxisSpacing: MarginSize.minimumGrid,
        crossAxisSpacing: MarginSize.minimumGrid,
        crossAxisCount: 3,
        children: DictionaryGroup.values.map((DictionaryGroup group) =>
            DictionaryGrid(group: group),
        ).toList(),
      ),
    );
  }
}
