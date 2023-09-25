import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/dictionary/dictionary_item_model.dart';
import 'package:hakondate/view/dictionary/dictionary_grid.dart';

import 'CustomSearchDelegate.dart';

class Dictionary extends ConsumerWidget {
  const Dictionary({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ずかん'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => {
              showSearch(context: context, delegate: CustomSearchDelegate(ref))
            }
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
