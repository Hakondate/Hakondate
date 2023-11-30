import 'package:hakondate/model/dictionary/dictionary_item_model.dart';
import 'package:hakondate/model/nutrients/nutrient_unit.dart';

enum MajorNutrient {  
  energy('energy', 'エネルギー', NutrientUnit.kcal),
  protein('protein', 'タンパク質', NutrientUnit.gram),
  vitamin('vitamin', 'ビタミン', NutrientUnit.mGram),
  mineral('mineral', 'ミネラル', NutrientUnit.mGram),
  carbohydrate('carbohydrate', '炭水化物', NutrientUnit.gram),
  lipid('lipid', '脂質', NutrientUnit.gram);

  const MajorNutrient(this.key, this.japaneseName, this.unit);

  final String key;
  final String japaneseName;
  final NutrientUnit unit;
}

extension MajorNutrientExtension on MajorNutrient {
  double getNutrient(DictionaryItemModel item){
    switch(key){
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
