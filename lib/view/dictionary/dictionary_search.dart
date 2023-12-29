import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/model/dictionary/dictionary_item_model.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/state/dictionary/dictionary_search_state.dart';
import 'package:hakondate/view_model/single_page/dictionary/dictionary_search_view_model.dart';
import 'package:hakondate/view_model/single_page/dictionary/dictionary_view_model.dart';

class DictionarySearch extends StatelessWidget {
  const DictionarySearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer(
          builder: (BuildContext context, WidgetRef ref, _) {
            return ref.watch(dictionarySearchViewModelProvider).maybeWhen(
                  data: (DictionarySearchState data) {
                    return TextFormField(
                      controller: data.searchBarTextController,
                      onChanged: (String value) async {
                        await ref
                            .read(dictionarySearchViewModelProvider.notifier)
                            .getSearchedList(value);
                      },
                      autofocus: true,
                      cursorColor: AppColor.brand.secondary,
                      decoration: InputDecoration(
                        hintText: '食材名を入力してください',
                        enabledBorder: InputBorder.none,
                        suffixIcon: IconButton(
                          onPressed: () async {
                            await ref
                                .read(
                                  dictionarySearchViewModelProvider.notifier,
                                )
                                .clearQuery();
                            data.searchBarTextController.clear();
                          },
                          icon: const Icon(
                            color: Colors.orange,
                            Icons.clear,
                          ),
                        ),
                      ),
                    );
                  },
                  orElse: () => const SizedBox.shrink(),
                );
          },
        ),
      ),
      body: Consumer(
        builder: (BuildContext context, WidgetRef ref, _) {
          return ref.watch(dictionarySearchViewModelProvider).maybeWhen(
                data: (DictionarySearchState data) {
                  final List<DictionaryItemModel> searchedItems =
                      data.searchedItems;
                  return ListView.separated(
                    itemCount: searchedItems.length,
                    separatorBuilder: (_, __) => const Divider(
                      height: 0,
                    ),
                    itemBuilder: (_, int index) {
                      final DictionaryItemModel item = searchedItems[index];
                      return ListTile(
                        tileColor: AppColor.ui.white,
                        title: Text(item.name),
                        trailing: const Icon(Icons.chevron_right_rounded),
                        onTap: () {
                          ref
                              .read(dictionaryViewModelProvider.notifier)
                              .selectItem(item.id);
                          routemaster.push('/home/dictionary_item/${item.id}');
                        },
                      );
                    },
                  );
                },
                orElse: () => const SizedBox.shrink(),
              );
        },
      ),
    );
  }
}
