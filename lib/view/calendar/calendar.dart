import 'package:hakondate_v2/view/calendar/non_lunches_day_calendar_tile.dart';
import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/constant/app_color.dart';
import 'package:hakondate_v2/constant/size.dart';
import 'package:hakondate_v2/router/routes.dart';
import 'package:hakondate_v2/view/component/frame/fade_up_app_bar.dart';
import 'package:hakondate_v2/view/calendar/menu_chips.dart';
import 'package:hakondate_v2/view_model/multi_page/common_function.dart';
import 'package:hakondate_v2/view_model/multi_page/user_view_model.dart';
import 'package:hakondate_v2/view_model/single_page/calendar_view_model.dart';
import 'package:hakondate_v2/view_model/single_page/daily_view_model.dart';
import 'package:hakondate_v2/model/menu/menu_model.dart';

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
              height: UiSize.calendarTileHeight,
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
        children: [
          Expanded(
            child: Consumer(
              builder: (BuildContext context, WidgetRef ref, _) {
                if (ref.read(commonFunctionProvider.notifier).isSameDay(day, DateTime.now())) {
                  return Container(
                    padding: const EdgeInsets.only(bottom: PaddingSize.minimum),
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      '今日',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColor.text.white,
                      ),
                    ),
                  );
                }
                return Container();
              }
            ),
          ),
          Expanded(
            child: Text(
              day.day.toString(),
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: AppColor.text.white,
                height: 1.0,
              ),
            ),
          ),
          Expanded(
            child: Text(
              DateFormat.EEEE('ja').format(day)[0],
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: AppColor.text.white,
              ),
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
      child: Stack(
        children: [
          Positioned(
            right: PaddingSize.minimum,
            bottom: PaddingSize.minimum,
            child: Image.asset(
              'assets/images/calendar_hedgehog/${day.month}.png',
              height: UiSize.calendarTileHeight * 0.8,
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Consumer(
                builder: (BuildContext context, WidgetRef ref, _) {
                  return FutureBuilder(
                    future: ref.read(calendarProvider.notifier).getDailyMenu(day),
                    builder: (BuildContext context, AsyncSnapshot<MenuModel> snapshot) {
                      if (snapshot.hasData) {
                        final MenuModel? menu = snapshot.data;

                        if (menu is LunchesDayMenuModel) {
                          return MenuChips(
                            menu: menu,
                          );
                        } else if (menu is HolidayMenuModel) {
                          return NonLunchesDayCalendarTile.holiday();
                        }

                        return NonLunchesDayCalendarTile.noData();
                      } else {
                        return NonLunchesDayCalendarTile.noData();
                      }
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
