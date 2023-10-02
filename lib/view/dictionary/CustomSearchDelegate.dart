import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/model/dictionary/dictionary_item_model.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/state/dictionary/dictionary_state.dart';
import 'package:hakondate/view/component/frame/fade_up_app_bar.dart';
import 'package:hakondate/view_model/single_page/dictionary/dictionary_view_model.dart';

class CustomSearchDelegate extends SearchDelegate {
  CustomSearchDelegate(this.ref) {
    ref.read(dictionaryViewModelProvider.notifier).selectGroup(
        DictionaryGroup.meat);
    state = ref.watch(dictionaryViewModelProvider);
  }

  WidgetRef ref;
  late final AsyncValue<DictionaryState> state;

  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return <Widget>[
      IconButton(
        icon: const Icon(Icons.clear),
        color: Colors.orange,
        onPressed: () => query = '',
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        color: Colors.orange,
        progress: transitionAnimation,
      ),
      onPressed: () => close(context, null),
    );
  }

  //検索結果
  @override
  Widget buildResults(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final AsyncValue<DictionaryState>state2 = ref.watch(dictionaryViewModelProvider);

        return state2.maybeWhen(
          data: (DictionaryState data) {
            final DictionaryGroup? selectedGroup = data.selectedGroup;
            final List<DictionaryItemModel>? selectedGroupItems = data.selectedGroupItems;
            //final List<DictionaryItemModel>? allItem = data.allItems;

            if (selectedGroupItems == null || selectedGroupItems == null) {
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
          }, orElse: () {
            return const Text('loading');
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return Text("suggest");
  }
}