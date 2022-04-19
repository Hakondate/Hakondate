import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/constant/app_color.dart';
import 'package:hakondate_v2/model/menu/daily_menu_model.dart';
import 'package:hakondate_v2/router/routes.dart';
import 'package:hakondate_v2/view/component/frame/fade_up_app_bar.dart';
import 'package:hakondate_v2/view_model/multi_page/user_view_model.dart';
import 'package:hakondate_v2/view_model/single_page/calendar_view_model.dart';
import 'package:hakondate_v2/view_model/single_page/daily_view_model.dart';

class Calendar extends StatelessWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FadeUpAppBar(
        title: Text('献立リスト'),
      ),
      body: Consumer(
        builder: (BuildContext context, WidgetRef ref, _) {
          final store = ref.watch(calendarProvider);

          return ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            itemCount: ref.read(calendarProvider.notifier).itemCount,
            itemBuilder: (_, int index) =>
                _dayTile(store.oldestDay!.add(Duration(days: index))),
          );
        },
      ),
    );
  }

  Widget _dayTile(DateTime day) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        return GestureDetector(
          onTap: () {
            ref.read(dailyProvider.notifier).updateSelectedDay(
              day: day,
              schoolId: ref.watch(userProvider).currentUser!.schoolId,
            );
            ref.watch(dailyProvider.notifier).updateFocusedDay(day);
            routemaster.pop();
          },
          child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: SizedBox(
              height: 100,
              child: Row(
                children: [
                  _dayLabel(day),
                  _dailyContent(day),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _dayLabel(DateTime day) {
    return Container(
      width: 64.0,
      height: double.infinity,
      color: _dayOfTheWeekColor(day),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            day.day.toString(),
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
              color: AppColor.ui.white,
            ),
          ),
          Text(
            DateFormat.EEEE('ja').format(day)[0],
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: AppColor.ui.white,
            ),
          ),
        ],
      ),
    );
  }

  Color _dayOfTheWeekColor(DateTime day) {
    if (day.weekday == 6) {
      return AppColor.ui.saturday;
    } else if (day.weekday == 7) {
      return AppColor.ui.sunday;
    }

    return AppColor.brand.secondaryLight;
  }

  Widget _dailyContent(DateTime day) {
    return Expanded(
      child: Consumer(
        builder: (BuildContext context, WidgetRef ref, _) {
          return FutureBuilder(
            future: ref.read(calendarProvider.notifier).getDailyMenu(day),
            builder: (BuildContext context, AsyncSnapshot<DailyMenuModel> snapshot) {
              if (snapshot.hasData) {
                final DailyMenuModel? dailyMenu = snapshot.data;

                if (dailyMenu == null) return Container();

                switch (dailyMenu.status) {
                  case DailyStatus.noData:
                    return Container();
                  case DailyStatus.holiday:
                    return Container();
                  case DailyStatus.lunchesDay:
                    return Container();
                  default:
                    return Container();
                }
              } else {
                return Container();
              }
            },
          );
        },
      ),
    );
  }
}
