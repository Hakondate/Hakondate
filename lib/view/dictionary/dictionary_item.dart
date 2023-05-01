import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/model/dictionary/dictionary_item_model.dart';
import 'package:hakondate/state/dictionary/dictionary_state.dart';
import 'package:hakondate/view/component/frame/fade_up_app_bar.dart';
import 'package:hakondate/view/component/graph/nutrients_radar_chart.dart';
import 'package:hakondate/view/component/label/nutrients_list.dart';
import 'package:hakondate/view_model/single_page/dictionary_view_model.dart';

class DictionaryItem extends ConsumerWidget {
  const DictionaryItem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final DictionaryState state = ref.watch(dictionaryProvider);

    return state.when(
      data: (_, __, DictionaryItemModel? selectedItem) {
        if (selectedItem == null) return _loading();
        const double maxValue = 100;

        return Scaffold(
          appBar: FadeUpAppBar(
            title: Text(selectedItem.name),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text(selectedItem.name),
                FutureBuilder<List<double>>(
                  future: ref.read(dictionaryProvider.notifier).getGraphValues(maxValue),
                  builder: (BuildContext context, AsyncSnapshot<List<double>> snapshot) {
                    if (snapshot.hasData) {
                      return NutrientsRadarChart(
                        values: snapshot.data!,
                        maxValue: maxValue,
                      );
                    }
          
                    return const SizedBox.shrink();
                  },
                ),
                NutrientsList(
                  nutrients: selectedItem.nutrients,
                  backgroundColor: AppColor.ui.secondaryUltraLight,
                ),
              ],
            ),
          ),
        );
      },
      load: _loading,
    );
  }

  Widget _loading() {
    return const Scaffold(
      appBar: FadeUpAppBar(),
    );
  }
}
