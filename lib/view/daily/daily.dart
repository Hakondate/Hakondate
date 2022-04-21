import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate_v2/model/menu/menu_model.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

import 'package:hakondate_v2/router/routes.dart';
import 'package:hakondate_v2/constant/app_color.dart';
import 'package:hakondate_v2/view/daily/menu_card.dart';
import 'package:hakondate_v2/view/daily/non_lunches_day_body.dart';
import 'package:hakondate_v2/view/daily/nutrients_card.dart';
import 'package:hakondate_v2/view_model/single_page/daily_view_model.dart';
import 'package:hakondate_v2/view_model/multi_page/user_view_model.dart';

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
        final store = ref.watch(dailyProvider);
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
          final store = ref.watch(dailyProvider);

          return TableCalendar(
            headerVisible: false,
            locale: 'ja_JP',
            calendarFormat: CalendarFormat.week,
            focusedDay: store.focusedDay,
            firstDay: store.calendarTabFirstDay,
            lastDay: store.calendarTabLastDay,
            selectedDayPredicate: (DateTime day) => isSameDay(store.selectedDay, day),
            onDaySelected: (DateTime selectedDay, _) {
              if (isSameDay(store.selectedDay, selectedDay)) return;
              ref.read(dailyProvider.notifier).updateSelectedDay(
                day: selectedDay,
                schoolId: ref.watch(userProvider).currentUser!.schoolId,
              );
            },
            onPageChanged: (DateTime focusedDay) =>
                ref.watch(dailyProvider.notifier).updateFocusedDay(focusedDay),  // readで読み込むと再描画が発生
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
