import 'package:hakondate/model/dictionary/dictionary_item_model.dart';
import 'package:hakondate/model/nutrients/nutrient_unit.dart';

enum FiveMajorNutrient {
  energy(japaneseName: 'エネルギー', unit: NutrientUnit.kcal),
  protein(japaneseName: 'タンパク質', unit: NutrientUnit.gram),
  vitamin(japaneseName: 'ビタミン', unit: NutrientUnit.mGram),
  mineral(japaneseName: 'ミネラル', unit: NutrientUnit.mGram),
  carbohydrate(japaneseName: '炭水化物', unit: NutrientUnit.gram),
  lipid(japaneseName: '脂質', unit: NutrientUnit.gram);

  //const FiveMajorNutrient(this.japaneseName, this.unit);
  const FiveMajorNutrient({
    required this.japaneseName,
    required this.unit,
  });

  final String japaneseName;
  final NutrientUnit unit;
}

extension MajorNutrientExtension on FiveMajorNutrient {
  double getNutrient(DictionaryItemModel item) {
    switch (item.toString()) {
      case 'energy':
        return item.nutrients.energy;
      case 'protein':
        return item.nutrients.protein;
      case 'vitamin':
        return item.nutrients.vitamin;
      case 'mineral':
        return item.nutrients.mineral;
      case 'carbohydrate':
        return item.nutrients.carbohydrate;
      case 'lipid':
        return item.nutrients.lipid;
      default:
        return 0;
    }
  }
}
