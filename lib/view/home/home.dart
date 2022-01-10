import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/unit/size.dart';
import 'package:hakondate_v2/view/home/menu_card.dart';
import 'package:hakondate_v2/view_model/multi_page/user_view_model.dart';
import 'package:hakondate_v2/view_model/single_page/home_view_model.dart';

class Home extends ConsumerWidget {
  final ScrollController scrollController = ScrollController();

  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future.microtask(() => ref
        .read(homeProvider.notifier)
        .initialize(ref.watch(userProvider).currentUser!.schoolId));

    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text(ref.read(homeProvider.notifier).dateText() + 'の献立'),
        ),
        body: _bodyWidget(),
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
            return ListView(
              controller: scrollController,
              children: const [
                MenuCard(),
              ],
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

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
