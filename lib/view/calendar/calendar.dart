import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/model/menu/menu_model.dart';
import 'package:hakondate_v2/router/routes.dart';
import 'package:hakondate_v2/unit/size.dart';
import 'package:hakondate_v2/view_model/multi_page/user_view_model.dart';
import 'package:hakondate_v2/view_model/single_page/calendar_view_model.dart';
import 'package:hakondate_v2/view_model/single_page/daily_view_model.dart';

class Calendar extends StatelessWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('献立リスト'),
      ),
      body: Consumer(
        builder: (BuildContext context, WidgetRef ref, _) {
          final store = ref.watch(calendarProvider);

          return RefreshIndicator(
            onRefresh: () => ref.read(calendarProvider.notifier).onRefresh(),
            child: ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: store.menus.length,
              itemBuilder: (_, int index) => _dayListTile(store.menus[index]),
            ),
          );
        },
      ),
    );
  }

  Widget _dayListTile(MenuModel menu) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        return GestureDetector(
          onTap: () {
            ref.read(dailyProvider.notifier).updateSelectedDay(
                  day: menu.day,
                  schoolId: ref.watch(userProvider).currentUser!.schoolId,
                );
            ref.watch(dailyProvider.notifier).updateFocusedDay(menu.day);
            routemaster.replace('/home/daily');
          },
          child: Card(
            shape: (ref.read(dailyProvider.notifier)
                    .isSameDay(menu.day, DateTime.now()))
                ? Border(
                    left: BorderSide(
                      color: Theme.of(context).colorScheme.secondary,
                      width: 5.0,
                    ),
                  )
                : null,
            child: Padding(
              padding: const EdgeInsets.all(PaddingSize.minimum),
              child: Row(
                children: [],
              ),
            ),
          ),
        );
      },
    );
  }
}
