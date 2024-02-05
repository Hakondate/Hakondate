import 'dart:ui';

import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/model/nutrients/nutrients_model.dart';
import 'package:hakondate/repository/local/sqlite/local_database.dart';

part 'dictionary_item_model.freezed.dart';
part 'dictionary_group.dart';

@freezed
class DictionaryItemModel with _$DictionaryItemModel {
  const factory DictionaryItemModel({
    /// ID
    required int id,

    /// 食品分類（1 ~ 18群）
    required DictionaryGroup group,

    /// 食材名
    required String name,

    /// 栄養素
    required NutrientsModel nutrients,

    /// 備考
    String? note,
  }) = _DictionaryItemModel;
  const DictionaryItemModel._();

  factory DictionaryItemModel.fromDrift(DictionaryItemsSchema schema) {
    final DictionaryGroup group = DictionaryGroup.values.firstWhere((DictionaryGroup group) => group.groupNumber == schema.group);

    return DictionaryItemModel(
      id: schema.id,
      group: group,
      name: schema.name,
      nutrients: NutrientsModel(
        energy: schema.energy,
        protein: schema.protein,
        lipid: schema.lipid,
        carbohydrate: schema.carbohydrate,
        sodium: schema.sodium,
        calcium: schema.calcium,
        magnesium: schema.magnesium,
        iron: schema.iron,
        zinc: schema.zinc,
        retinol: schema.retinol,
        vitaminB1: schema.vitaminB1,
        vitaminB2: schema.vitaminB2,
        vitaminC: schema.vitaminC,
        dietaryFiber: schema.dietaryFiber,
        salt: schema.salt,
      ),
      note: schema.note,
    );
  }

  DictionaryItemsTableCompanion toDrift() => DictionaryItemsTableCompanion(
    id: Value<int>(id),
    group: Value<int>(group.groupNumber),
    name: Value<String>(name),
    energy: Value<double>(nutrients.energy),
    protein: Value<double>(nutrients.protein),
    lipid: Value<double>(nutrients.lipid),
    carbohydrate: Value<double>(nutrients.carbohydrate),
    sodium: Value<double>(nutrients.sodium),
    calcium: Value<double>(nutrients.calcium),
    magnesium: Value<double>(nutrients.magnesium),
    iron: Value<double>(nutrients.iron),
    zinc: Value<double>(nutrients.zinc),
    retinol: Value<double>(nutrients.retinol),
    vitaminB1: Value<double>(nutrients.vitaminB1),
    vitaminB2: Value<double>(nutrients.vitaminB2),
    vitaminC: Value<double>(nutrients.vitaminC),
    dietaryFiber: Value<double>(nutrients.dietaryFiber),
    salt: Value<double>(nutrients.salt),
    note: Value<String?>(note),
  );
}
