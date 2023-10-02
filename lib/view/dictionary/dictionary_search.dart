
import 'package:drift/drift.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/dictionary/dictionary_item_model.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/state/dictionary/dictionary_state.dart';
import 'package:hakondate/view_model/single_page/dictionary/dictionary_view_model.dart';

class DictionarySearch extends ConsumerWidget {
  DictionarySearch({super.key});
  var _controller = TextEditingController();
  late AsyncValue<DictionaryState> state;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    state = ref.watch(dictionaryViewModelProvider);
    return Scaffold(
      appBar: AppBar(
        title:
          TextFormField(
            onChanged: (value) {
              ref.read(dictionaryViewModelProvider.notifier).getAll(value);
            },
            initialValue: 'ああ',
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              suffixIcon: IconButton(
                onPressed: () => {},
                icon: const Icon(
                  color: Colors.orange,
                  Icons.clear,
                ),
              )
            ),
          ),
        
      ),
      body: state.maybeWhen(
        data:(data) {
          final DictionaryGroup? selectedGroup = data.selectedGroup;
            final List<DictionaryItemModel>? selectedGroupItems = data.allItems;
            //final List<DictionaryItemModel>? allItem = data.allItems;

            if (selectedGroupItems == null) {
              return const Text('loading');
            }

            return ListView.separated(
              itemCount: selectedGroupItems.length,
              separatorBuilder: (_, __) =>
              const Divider(
                height: 0,
              ),
              itemBuilder: (_, int index) {
                final DictionaryItemModel item = selectedGroupItems[index];
                return ListTile(
                  tileColor: AppColor.ui.white,
                  title: Text(item.name),
                  trailing: const Icon(Icons.chevron_right_rounded),
                  onTap: () {
                    ref.read(dictionaryViewModelProvider.notifier).selectItem(
                        item.id);
                    routemaster.push('/home/dictionary_item/${item.id}');
                  },
                );
              },
            );
        },
        orElse: () {
          return Text('loading');
        },
      )
    );
  }
}
