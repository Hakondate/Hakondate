import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate/model/menu/menu_model.dart';
import 'package:hakondate/view_model/multi_page/linking_daily_calendar_view_model.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

import 'package:hakondate/router/routes.dart';
import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/view/daily/menu_card.dart';
import 'package:hakondate/view/daily/non_lunches_day_body.dart';
import 'package:hakondate/view/daily/nutrients_card.dart';
import 'package:hakondate/view_model/single_page/daily_view_model.dart';

class Daily extends StatelessWidget {
  const Daily({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: _appBarTitle(),
        actions: [
          IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: const Icon(Icons.calendar_today_outlined),
            onPressed: () => routemaster.replace('/home/calendar'),
          ),
        ],
      ),
      body: Column(
        children: [
          _calendarWidget(),
          _bodyWidget(),
        ],
      ),
    );
  }

  Widget _appBarTitle() {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        final store = ref.watch(linkingDailyCalendarProvider);
        final formatted = (isSameDay(store.selectedDay, DateTime.now()))
            ? '今日' : DateFormat('M月d日').format(store.selectedDay);

        return Text(formatted + 'の献立');
      },
    );
  }

  Widget _calendarWidget() {
    return Material(
      color: AppColor.brand.primary,
      elevation: 4.0,
      child: Consumer(
        builder: (BuildContext context, WidgetRef ref, _) {
          final dailyStore = ref.watch(dailyProvider);
          final linkingStore = ref.watch(linkingDailyCalendarProvider);

          return TableCalendar(
            headerVisible: false,
            locale: 'ja_JP',
            calendarFormat: CalendarFormat.week,
            focusedDay: dailyStore.focusedDay,
            firstDay: linkingStore.calendarOldestDay,
            lastDay: linkingStore.calendarLatestDay,
            selectedDayPredicate: (DateTime day) => isSameDay(linkingStore.selectedDay, day),
            onDaySelected: (DateTime selectedDay, _) {
              if (isSameDay(linkingStore.selectedDay, selectedDay)) return;
              ref.read(dailyProvider.notifier).updateSelectedDay(selectedDay);
            },
            onPageChanged: (DateTime focusedDay) =>
                ref.read(dailyProvider.notifier).updateFocusedDay(focusedDay),  // readで読み込むと再描画が発生
            daysOfWeekHeight: 20,
            calendarStyle: CalendarStyle(
              todayTextStyle: const CalendarStyle().defaultTextStyle,
              todayDecoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColor.brand.secondary,
                ),
              ),
              selectedDecoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.brand.secondary,
              ),
              outsideTextStyle: const CalendarStyle().defaultTextStyle,
            ),
          );
        }
      ),
    );
  }

  Widget _bodyWidget() {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        final store = ref.watch(dailyProvider);

        if (store.isFetching) {
          return Container();
        }

        if (store.menu is LunchesDayMenuModel) {
          return Expanded(
            child: ListView(
              children: const [
                MenuCard(),
                NutrientsCard(),
              ],
            ),
          );
        } else if (store.menu is HolidayMenuModel) {
          return const NonLunchesDayBody(
            imageFileName: 'holiday.png',
            text: '給食はお休みです...',
          );
        }

        return const NonLunchesDayBody(
          imageFileName: 'no_data.png',
          text: '献立は準備中です...',
        );
      },
    );
  }
}
