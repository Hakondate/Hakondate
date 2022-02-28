import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

import 'package:hakondate_v2/unit/size.dart';
import 'package:hakondate_v2/view/daily/menu_card.dart';
import 'package:hakondate_v2/view/daily/nutrients_card.dart';
import 'package:hakondate_v2/view_model/single_page/home_view_model.dart';
import 'package:hakondate_v2/view_model/multi_page/user_view_model.dart';

class Daily extends ConsumerWidget {
  const Daily({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: _appBarTitle(),
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
        final store = ref.watch(homeProvider);
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
          final store = ref.watch(homeProvider);

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
              ref.read(homeProvider.notifier).updateSelectedDay(
                day: selectedDay,
                schoolId: ref.watch(userProvider).currentUser!.schoolId,
              );
            },
            onPageChanged: (DateTime focusedDay) =>
                ref.watch(homeProvider.notifier).updateFocusedDay(focusedDay),  // readで読み込むと再描画が発生
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
        final store = ref.watch(homeProvider);

        if (store.isFetching) {
          return Container();
        }

        switch (store.status) {
          case 0:
            return _noMenuWidget(
              context: context,
              imageFileName: 'holiday.png',
              text: '給食はお休みです...',
            );
          case -1:
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
