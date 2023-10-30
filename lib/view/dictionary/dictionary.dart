import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/dictionary/dictionary_item_model.dart';
import 'package:hakondate/view/dictionary/dictionary_grid.dart';

class Dictionary extends StatelessWidget {
  const Dictionary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ずかん'),
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
