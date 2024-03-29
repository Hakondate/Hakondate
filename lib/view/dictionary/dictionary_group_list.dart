import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/model/dictionary/dictionary_item_model.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/state/dictionary/dictionary_state.dart';
import 'package:hakondate/view_model/single_page/dictionary/dictionary_view_model.dart';

class DictionaryGroupList extends ConsumerWidget {
  const DictionaryGroupList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<DictionaryState> state = ref.watch(dictionaryViewModelProvider);

    return state.maybeWhen(
      data: (DictionaryState data) {
        final DictionaryGroup? selectedGroup = data.selectedGroup;
        final List<DictionaryItemModel>? selectedGroupItems = data.selectedGroupItems;

        if (selectedGroup == null || selectedGroupItems == null) return _loading();

        return Scaffold(
          appBar: AppBar(
            title: Text('${selectedGroup.groupNumber}群：${selectedGroup.label}'),
          ),
          body: Scrollbar(
            child: ListView.separated(
              itemCount: selectedGroupItems.length,
              separatorBuilder: (_, __) => const Divider(
                height: 0,
              ),
              itemBuilder: (_, int index) {
                final DictionaryItemModel item = selectedGroupItems[index];
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
            ),
          ),
        );
      },
      orElse: _loading,
    );
  }

  Widget _loading() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('　群：　　　類'),
      ),
    );
  }
}
