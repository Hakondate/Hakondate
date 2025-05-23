import 'dart:math';

import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/model/dictionary/dictionary_item_model.dart';
import 'package:hakondate/repository/local/sqlite/local_database.dart';
import 'package:hakondate/util/exception/sqlite_exception.dart';
import 'package:hakondate/util/extension/string_extension.dart';

part 'dictionary_items_local_repository.g.dart';

@Riverpod(keepAlive: true)
DictionaryItemsLocalRepository dictionaryItemsLocalRepository(Ref ref) {
  final LocalDatabase localDatabase = ref.watch(localDatabaseProvider);
  return DictionaryItemsLocalRepository(localDatabase);
}

abstract class DictionaryItemsLocalRepositoryAPI {
  Future<int> add(Map<String, dynamic> item);
  Future<List<DictionaryItemModel>> listGroup(int group);
  Future<DictionaryItemModel> getById(int id);
  Future<List<DictionaryItemModel>> getAll();
  Future<List<DictionaryItemModel>> search(String query);
  Future<List<DictionaryItemModel>> getRadarChartValues({required String nutrient, int limit = 5});
  Future<List<DictionaryItemModel>> getRanking({required String nutrient, int limit = 5});
}

class DictionaryItemsLocalRepository extends DictionaryItemsLocalRepositoryAPI {
  DictionaryItemsLocalRepository(this._db);

  final LocalDatabase _db;

  @override
  Future<int> add(Map<String, dynamic> item) async {
    final DictionaryItemsTableCompanion companion = DictionaryItemsTableCompanion(
      group: Value<int>(int.parse(item['group'].toString())),
      name: Value<String>(item['name'] as String),
      energy: Value<double>(double.parse(item['energy'].toString())),
      protein: Value<double>(double.parse(item['protein'].toString())),
      lipid: Value<double>(double.parse(item['lipid'].toString())),
      carbohydrate: Value<double>(double.parse(item['carbohydrate'].toString())),
      sodium: Value<double>(double.parse(item['sodium'].toString())),
      calcium: Value<double>(double.parse(item['calcium'].toString())),
      magnesium: Value<double>(double.parse(item['magnesium'].toString())),
      iron: Value<double>(double.parse(item['iron'].toString())),
      zinc: Value<double>(double.parse(item['zinc'].toString())),
      retinol: Value<double>(double.parse(item['retinol'].toString())),
      vitaminB1: Value<double>(double.parse(item['vitaminB1'].toString())),
      vitaminB2: Value<double>(double.parse(item['vitaminB2'].toString())),
      vitaminC: Value<double>(double.parse(item['vitaminC'].toString())),
      dietaryFiber: Value<double>(double.parse(item['dietaryFiber'].toString())),
      salt: Value<double>(double.parse(item['salt'].toString())),
      note: Value<String?>(item['note'] as String?),
    );
    final DictionaryItemsSchema? conflictSchema = await (_db.select(_db.dictionaryItemsTable)
          ..where(
            ($DictionaryItemsTableTable t) => t.group.equals(companion.group.value) & t.name.equals(companion.name.value),
          ))
        .getSingleOrNull();

    if (conflictSchema == null) {
      return _db.into(_db.dictionaryItemsTable).insert(companion);
    } else {
      return (_db.update(_db.dictionaryItemsTable)
            ..where(
              ($DictionaryItemsTableTable t) => t.group.equals(companion.group.value) & t.name.equals(companion.name.value),
            ))
          .write(companion);
    }
  }

  @override
  Future<DictionaryItemModel> getById(int id) async {
    final DictionaryItemsSchema schema =
        await (_db.select(_db.dictionaryItemsTable)..where(($DictionaryItemsTableTable t) => t.id.equals(id))).getSingle();

    return DictionaryItemModel.fromDrift(schema);
  }

  @override
  Future<List<DictionaryItemModel>> listGroup(int group) async {
    final List<DictionaryItemModel> items = <DictionaryItemModel>[];
    final List<DictionaryItemsSchema> schemas =
        await (_db.select(_db.dictionaryItemsTable)..where(($DictionaryItemsTableTable t) => t.group.equals(group))).get();

    for (final DictionaryItemsSchema schema in schemas) {
      items.add(DictionaryItemModel.fromDrift(schema));
    }
    return items;
  }

  @override
  Future<List<DictionaryItemModel>> getAll() async {
    final List<DictionaryItemModel> items = <DictionaryItemModel>[];

    final List<DictionaryItemsSchema> schemas = await (_db.select(_db.dictionaryItemsTable)).get()
      ..sort((DictionaryItemsSchema a, DictionaryItemsSchema b) => a.name.compareTo(b.name));
    for (final DictionaryItemsSchema schema in schemas) {
      items.add(DictionaryItemModel.fromDrift(schema));
    }
    return items;
  }

  @override
  Future<List<DictionaryItemModel>> search(String query) async {
    final List<DictionaryItemModel> items = <DictionaryItemModel>[];

    final List<DictionaryItemsSchema> schemas =
        await (_db.select(_db.dictionaryItemsTable)..where(($DictionaryItemsTableTable t) => t.name.contains(query.toHiragana()))).get()
          ..sort(
            (DictionaryItemsSchema a, DictionaryItemsSchema b) =>
                _compareSearchHit(a.name.toHiragana(), b.name.toHiragana(), query.toHiragana()),
          );
    for (final DictionaryItemsSchema schema in schemas) {
      items.add(DictionaryItemModel.fromDrift(schema));
    }
    return items;
  }

  /// # 優先度
  /// 完全一致　→ 完全包含　→ 部分一致　→ 辞書順
  /// # 引数
  /// - leftInput: 比較対象1（queryを完全包含している前提）
  /// - rightInput: 比較対象2（queryを完全包含している前提）
  /// - query: 検索クエリ
  /// # 戻り値の仕様
  /// StringクラスのcompareToメソッドと同じ
  /// - return 1  : leftInputの方が優先度が高い
  /// - return 0  : leftInputとrightInputの優先度が同じ
  /// - return -1 : rightInputの方が優先度が高い
  int _compareSearchHit(String leftInput, String rightInput, String query) {
    final String left = leftInput.toHiragana();
    final String right = rightInput.toHiragana();

    /// 完全一致チェック
    if (left == query) return 1;
    if (right == query) return -1;

    /// 完全包含チェック
    final int leftIndexOfQuery = left.indexOf(query);
    final int rightIndexOfQuery = right.indexOf(query);

    final bool isLeftSpaceDelimitedWord = _isSpaceDelimited(left, leftIndexOfQuery, query);
    final bool isRightSpaceDelimitedWord = _isSpaceDelimited(right, rightIndexOfQuery, query);

    if (!(isLeftSpaceDelimitedWord && isRightSpaceDelimitedWord)) {
      if (isLeftSpaceDelimitedWord) return -1;
      if (isRightSpaceDelimitedWord) return 1;
    }

    /// 部分一致チェック
    if (leftIndexOfQuery < rightIndexOfQuery) return -1;
    if (leftIndexOfQuery > rightIndexOfQuery) return 1;

    return left.compareTo(right);
  }

  bool _isSpaceDelimited(String name, int indexOfQuery, String query) {
    const List<String> wordSplitters = <String>[' ', '　'];
    for (final String wordSplitter in wordSplitters) {
      return name.contains(RegExp('(^|$wordSplitter)$query($wordSplitter|\$)'));
    }

    return false;
  }

  @override
  Future<List<DictionaryItemModel>> getRadarChartValues({
    required String nutrient,
    int limit = 5,
  }) async {
    final List<DictionaryItemModel> items = <DictionaryItemModel>[];
    final List<DictionaryItemsSchema> schemas = await (_db.select(_db.dictionaryItemsTable)
          ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
            ($DictionaryItemsTableTable t) => OrderingTerm(
                  expression: switch (nutrient) {
                    'energy' => t.energy,
                    'protein' => t.protein,
                    'lipid' => t.lipid,
                    'carbohydrate' => t.carbohydrate,
                    'sodium' => t.sodium,
                    'calcium' => t.calcium,
                    'magnesium' => t.magnesium,
                    'iron' => t.iron,
                    'zinc' => t.zinc,
                    'retinol' => t.retinol,
                    'vitaminB1' => t.vitaminB1,
                    'vitaminB2' => t.vitaminB2,
                    'vitaminC' => t.vitaminC,
                    'dietaryFiber' => t.dietaryFiber,
                    'salt' => t.salt,
                    'vitamin' => t.retinol / const Variable<double>(1000) + t.vitaminB1 + t.vitaminB2 + t.vitaminC,
                    'mineral' => t.calcium + t.magnesium + t.iron + t.zinc,
                    _ => throw SQLiteException("Failed to find nutrient '$nutrient'"),
                  },
                  mode: OrderingMode.desc,
                ),
          ])
          ..limit(limit))
        .get();

    for (final DictionaryItemsSchema schema in schemas) {
      items.add(DictionaryItemModel.fromDrift(schema));
    }
    return items;
  }

  @override
  Future<List<DictionaryItemModel>> getRanking({
    required String nutrient,
    int limit = 5,
    int top = 100,
  }) async {
    final List<DictionaryItemModel> items = <DictionaryItemModel>[];
    final List<DictionaryItemsSchema> schemas = <DictionaryItemsSchema>[];
    List<DictionaryItemsSchema> top100Items = <DictionaryItemsSchema>[];
    final Random random = Random();

    top100Items = await (_db.select(_db.dictionaryItemsTable)
          ..where(($DictionaryItemsTableTable tbl) => tbl.group.isNotIn(<int>[3, 14, 15, 16, 17, 18]))
          ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
            ($DictionaryItemsTableTable t) => OrderingTerm(
                  expression: switch (nutrient) {
                    'energy' => t.energy,
                    'protein' => t.protein,
                    'lipid' => t.lipid,
                    'carbohydrate' => t.carbohydrate,
                    'sodium' => t.sodium,
                    'calcium' => t.calcium,
                    'magnesium' => t.magnesium,
                    'iron' => t.iron,
                    'zinc' => t.zinc,
                    'retinol' => t.retinol,
                    'vitaminB1' => t.vitaminB1,
                    'vitaminB2' => t.vitaminB2,
                    'vitaminC' => t.vitaminC,
                    'dietaryFiber' => t.dietaryFiber,
                    'salt' => t.salt,
                    'vitamin' => t.retinol / const Variable<double>(1000) + t.vitaminB1 + t.vitaminB2 + t.vitaminC,
                    'mineral' => t.calcium + t.magnesium + t.iron + t.zinc,
                    _ => throw SQLiteException("Failed to find nutrient '$nutrient'"),
                  },
                  mode: OrderingMode.desc,
                ),
          ])
          ..limit(top))
        .get();

    for (int i = 0; i < limit; i++) {
      if (top100Items.isEmpty) break;
      final int randomIndex = random.nextInt(top100Items.length);
      schemas.add(top100Items.removeAt(randomIndex));
    }

    for (final DictionaryItemsSchema schema in schemas) {
      items.add(DictionaryItemModel.fromDrift(schema));
    }

    return items;
  }
}
