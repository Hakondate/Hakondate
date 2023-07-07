import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/constant/app_color.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/dictionary/dictionary_item_model.dart';
import 'package:hakondate/state/dictionary/dictionary_state.dart';
import 'package:hakondate/view/component/frame/fade_up_app_bar.dart';
import 'package:hakondate/view/component/graph/nutrients_radar_chart.dart';
import 'package:hakondate/view/component/label/nutrients_list.dart';
import 'package:hakondate/view_model/single_page/dictionary/dictionary_view_model.dart';

class DictionaryItem extends ConsumerWidget {
  const DictionaryItem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<DictionaryState> state = ref.watch(dictionaryViewModelProvider);

    return state.maybeWhen(
      data: (DictionaryState data) {
        final DictionaryItemModel? selectedItem = data.selectedItem;

        if (selectedItem == null) return _loading();
        const double maxValue = 100;

        return Scaffold(
          appBar: FadeUpAppBar(
            title: Text(selectedItem.name),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(PaddingSize.minimum),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: UiSize.dictionaryGroupBox,
                        height: UiSize.dictionaryGroupBox,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: BorderSize.normal,
                            color: selectedItem.group.color,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(UiSize.minimumGridCircular)),
                        ),
                        child: Center(
                          child: Text(
                            '${selectedItem.group.groupNumber}群',
                            style: TextStyle(
                              color: selectedItem.group.color,
                              fontWeight: FontWeight.bold,
                              height: 1,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            selectedItem.name,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: FontSize.label,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: UiSize.dictionaryGroupBox,
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: AppColor.brand.secondaryLight,
                  indent: MarginSize.normalVertical,
                  endIndent: MarginSize.normalVertical,
                  height: 0,
                ),
                FutureBuilder<List<double>>(
                  future: ref.read(dictionaryViewModelProvider.notifier).getGraphValues(maxValue),
                  builder: (BuildContext context, AsyncSnapshot<List<double>> snapshot) {
                    if (snapshot.hasData) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: PaddingSize.contentLarge,
                        ),
                        child: NutrientsRadarChart(
                          values: snapshot.data!,
                          rowValues: <double>[
                            selectedItem.nutrients.energy,
                            selectedItem.nutrients.protein,
                            selectedItem.nutrients.vitamin,
                            selectedItem.nutrients.mineral,
                            selectedItem.nutrients.carbohydrate,
                            selectedItem.nutrients.lipid,
                          ],
                          maxValue: maxValue,
                          size: 0.9,
                        ),
                      );
                    }
                    
                    return const SizedBox.shrink();
                  },
                ),
                NutrientsList(
                  nutrients: selectedItem.nutrients,
                  backgroundColor: AppColor.ui.secondaryUltraLight,
                ),
                if (selectedItem.note != null && selectedItem.note != '') Padding(
                  padding: const EdgeInsets.only(
                    left: PaddingSize.contentLarge,
                    right: PaddingSize.contentLarge,
                    top: PaddingSize.minimum,
                    bottom: 32,
                  ),
                  child: Text(
                    '備考：\n${selectedItem.note!}',
                  ),
                ),
              ],
            ),
          ),
        );
      },
      orElse: _loading,
    );
  }

  Widget _loading() {
    return const Scaffold(
      appBar: FadeUpAppBar(),
    );
  }
}
