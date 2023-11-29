import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/model/dictionary/dictionary_item_model.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/state/dictionary/dictionary_state.dart';
import 'package:hakondate/view_model/single_page/dictionary/dictionary_view_model.dart';

class DictionarySearch extends ConsumerWidget {
  DictionarySearch({super.key});
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<DictionaryState> state = ref.watch(dictionaryViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title:
          TextFormField(
            controller: _controller,
            onChanged: (String value) {
              ref.read(dictionaryViewModelProvider.notifier).getSearchedList(value);
            },
            cursorColor:AppColor.brand.secondary,
            decoration: InputDecoration(
              hintText: 'search',
              enabledBorder: InputBorder.none,
              suffixIcon: IconButton(
                onPressed: () {
                  ref.read(dictionaryViewModelProvider.notifier).clearQuery();
                  _controller.clear();
                },
                icon: const Icon(
                  color: Colors.orange,
                  Icons.clear,
                ),
              ),
            ),
          ),
      ),
      body: state.maybeWhen(
        data:(DictionaryState data) {
            final List<DictionaryItemModel> searchedItems = data.searchedItems;
            
            return ListView.separated(
              itemCount: searchedItems.length,
              separatorBuilder: (_, __) =>
              const Divider(
                height: 0,
              ),
              itemBuilder: (_, int index) {
                final DictionaryItemModel item = searchedItems[index];
                return ListTile(
                  tileColor: AppColor.ui.white,
                  title: Text(item.name),
                  trailing: const Icon(Icons.chevron_right_rounded),
                  onTap: () {
                    ref.read(dictionaryViewModelProvider.notifier).selectItem(item.id);
                    routemaster.push('/home/dictionary_item/${item.id}');
                  },
                );
              },
            );
        },
        orElse: () {
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
