import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/model/menu/menu_model.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/state/daily/daily_state.dart';
import 'package:hakondate/view/daily/menu_card.dart';
import 'package:hakondate/view/daily/non_lunches_day_body.dart';
import 'package:hakondate/view/daily/nutrients_card.dart';
import 'package:hakondate/view_model/multi_page/drawer/drawer_view_model.dart';
import 'package:hakondate/view_model/single_page/daily/daily_view_model.dart';

class Daily extends StatelessWidget {
  const Daily({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: _appBarTitle(),
        leading: Consumer(
          builder: (BuildContext context, WidgetRef ref, _) => IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: const Icon(Icons.dehaze),
            onPressed: () => ref.read(drawerViewModelProvider.notifier).openDrawer(),
          ),
        ),
        actions: <Widget>[
          IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: const Icon(Icons.calendar_today_outlined),
            onPressed: () => routemaster.replace('/home/calendar'),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          _calendarWidget(),
          _bodyWidget(),
        ],
      ),
    );
  }

  Widget _appBarTitle() {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        return ref.watch(dailyViewModelProvider).when(
              data: (DailyState state) {
                final String formatted =
                    (isSameDay(state.selectedDay, DateTime.now())) ? '今日' : DateFormat('M月d日').format(state.selectedDay);

                return Text('$formattedの献立');
              },
              error: (_, __) => const Text(''),
              loading: () => const Text('読み込み中'),
            );
      },
    );
  }

  Widget _calendarWidget() {
    return Material(
      color: AppColor.brand.primary,
      elevation: 4,
      child: Consumer(
        builder: (BuildContext context, WidgetRef ref, _) {
          return ref.watch(dailyViewModelProvider).maybeWhen(
                data: (DailyState state) => TableCalendar<dynamic>(
                  headerVisible: false,
                  locale: 'ja_JP',
                  calendarFormat: CalendarFormat.week,
                  focusedDay: state.focusedDay,
                  firstDay: state.calendarTabFirstDay,
                  lastDay: state.calendarTabLastDay,
                  selectedDayPredicate: (DateTime day) => isSameDay(state.selectedDay, day),
                  onDaySelected: (DateTime selectedDay, DateTime focusedDay) async {
                    if (isSameDay(state.selectedDay, selectedDay)) return;
                    await ref.read(dailyViewModelProvider.notifier).updateSelectedDay(selectedDay: selectedDay);
                  },
                  onPageChanged: (DateTime focusedDay) => ref.read(dailyViewModelProvider.notifier).updateFocusedDay(focusedDay),
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
                ),
                orElse: () => const SizedBox.shrink(),
              );
        },
      ),
    );
  }

  Widget _bodyWidget() {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, _) {
        return ref.watch(dailyViewModelProvider).maybeWhen(
              data: (DailyState state) {
                return Expanded(
                  child: GestureDetector(
                    onHorizontalDragEnd: (DragEndDetails details) {
                      if (details.primaryVelocity! < 0) {
                        ref.read(dailyViewModelProvider.notifier).updateSelectedDay(
                              selectedDay: ref.read(dailyViewModelProvider.notifier).getAddedSelectedDay(state, 1),
                            );
                      } else {
                        ref.read(dailyViewModelProvider.notifier).updateSelectedDay(
                              selectedDay: ref.read(dailyViewModelProvider.notifier).getAddedSelectedDay(state, -1),
                            );
                      }
                    },
                    child: (() {
                      if (state.menu is LunchesDayMenuModel) {
                        return ListView(
                          controller: state.scrollController,
                          children: const <Widget>[
                            MenuCard(),
                            NutrientsCard(),
                          ],
                        );
                      } else {
                        return Column(
                          children: <Widget>[
                            (() {
                              if (state.menu is HolidayMenuModel) {
                                return const NonLunchesDayBody(
                                  imageFileName: 'holiday.png',
                                  text: '給食はお休みです...',
                                );
                              } else {
                                return const NonLunchesDayBody(
                                  imageFileName: 'no_data.png',
                                  text: '献立は準備中です...',
                                );
                              }
                            })(),
                          ],
                        );
                      }
                    })(),
                  ),
                );
              },
              orElse: () => const SizedBox.shrink(),
            );
      },
    );
  }
}
