import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate_v2/router/routes.dart';
import 'package:hakondate_v2/state/daily/daily_state.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

import 'package:hakondate_v2/unit/size.dart';
import 'package:hakondate_v2/view/daily/menu_card.dart';
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
            icon: const Icon(Icons.calendar_today_outlined),
            onPressed: () => routemaster.push('calendar'),
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
      color: Colors.white,
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
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              selectedDecoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.secondary,
              ),
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

        switch (store.status) {
          case DailyStatus.holiday:
            return _noMenuWidget(
              context: context,
              imageFileName: 'holiday.png',
              text: '給食はお休みです...',
            );
          case DailyStatus.noData:
            return _noMenuWidget(
              context: context,
              imageFileName: 'no_data.png',
              text: '献立は準備中です...',
            );
          default:
            return Expanded(
              child: ListView(
                children: const [
                  MenuCard(),
                  NutrientsCard(),
                ],
              ),
            );
        }
      },
    );
  }

  Widget _noMenuWidget({
    required BuildContext context,
    required String imageFileName,
    required String text,
  }) {
    final double _screenWidth = MediaQuery.of(context).size.width;

    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/menu_status/' + imageFileName,
            width: _screenWidth / 2,
          ),
          const SizedBox(height: MarginSize.normal),
          Text(
            text,
            style: const TextStyle(
              fontSize: FontSize.menuStatus,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
