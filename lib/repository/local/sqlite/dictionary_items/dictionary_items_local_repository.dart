import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/model/dictionary/dictionary_item_model.dart';
import 'package:hakondate/repository/local/sqlite/local_database.dart';
import 'package:hakondate/util/exception/sqlite_exception.dart';
import 'package:hakondate/util/extension/string_extension.dart';

part 'dictionary_items_local_repository.g.dart';

@Riverpod(keepAlive: true)
DictionaryItemsLocalRepository dictionaryItemsLocalRepository(DictionaryItemsLocalRepositoryRef ref) {
  final LocalDatabase localDatabase = ref.watch(localDatabaseProvider);
  return DictionaryItemsLocalRepository(localDatabase);
}

abstract class DictionaryItemsLocalRepositoryAPI {
  Future<int> add(Map<String, dynamic> item);
  Future<List<DictionaryItemModel>> listGroup(int group);
  Future<DictionaryItemModel> getById(int id);
  Future<List<DictionaryItemModel>> getAll();
  Future<List<DictionaryItemModel>> search(String query);
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
            (DictionaryItemsSchema a, DictionaryItemsSchema b) => _compareSearchHit(a.name.toHiragana(), b.name.toHiragana(), query),
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
  Future<List<DictionaryItemModel>> getRanking({
    required String nutrient,
    int limit = 5,
  }) async {
    final List<DictionaryItemModel> items = <DictionaryItemModel>[];
    List<DictionaryItemsSchema> schemas = <DictionaryItemsSchema>[];

    switch (nutrient) {
      case 'energy':
        schemas = await (_db.select(_db.dictionaryItemsTable)
              ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
                      expression: t.energy,
                      mode: OrderingMode.desc,
                    ),
              ])
              ..limit(limit))
            .get();
      case 'protein':
        schemas = await (_db.select(_db.dictionaryItemsTable)
              ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
                      expression: t.protein,
                      mode: OrderingMode.desc,
                    ),
              ])
              ..limit(limit))
            .get();
      case 'lipid':
        schemas = await (_db.select(_db.dictionaryItemsTable)
              ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
                      expression: t.lipid,
                      mode: OrderingMode.desc,
                    ),
              ])
              ..limit(limit))
            .get();
      case 'carbohydrate':
        schemas = await (_db.select(_db.dictionaryItemsTable)
              ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
                      expression: t.carbohydrate,
                      mode: OrderingMode.desc,
                    ),
              ])
              ..limit(limit))
            .get();
      case 'sodium':
        schemas = await (_db.select(_db.dictionaryItemsTable)
              ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
                      expression: t.sodium,
                      mode: OrderingMode.desc,
                    ),
              ])
              ..limit(limit))
            .get();
      case 'calcium':
        schemas = await (_db.select(_db.dictionaryItemsTable)
              ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
                      expression: t.calcium,
                      mode: OrderingMode.desc,
                    ),
              ])
              ..limit(limit))
            .get();
      case 'magnesium':
        schemas = await (_db.select(_db.dictionaryItemsTable)
              ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
                      expression: t.magnesium,
                      mode: OrderingMode.desc,
                    ),
              ])
              ..limit(limit))
            .get();
      case 'iron':
        schemas = await (_db.select(_db.dictionaryItemsTable)
              ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
                      expression: t.iron,
                      mode: OrderingMode.desc,
                    ),
              ])
              ..limit(limit))
            .get();
      case 'zinc':
        schemas = await (_db.select(_db.dictionaryItemsTable)
              ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
                      expression: t.zinc,
                      mode: OrderingMode.desc,
                    ),
              ])
              ..limit(limit))
            .get();
      case 'retinol':
        schemas = await (_db.select(_db.dictionaryItemsTable)
              ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
                      expression: t.retinol,
                      mode: OrderingMode.desc,
                    ),
              ])
              ..limit(limit))
            .get();
      case 'vitaminB1':
        schemas = await (_db.select(_db.dictionaryItemsTable)
              ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
                      expression: t.vitaminB1,
                      mode: OrderingMode.desc,
                    ),
              ])
              ..limit(limit))
            .get();
      case 'vitaminB2':
        schemas = await (_db.select(_db.dictionaryItemsTable)
              ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
                      expression: t.vitaminB2,
                      mode: OrderingMode.desc,
                    ),
              ])
              ..limit(limit))
            .get();
      case 'vitaminC':
        schemas = await (_db.select(_db.dictionaryItemsTable)
              ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
                      expression: t.vitaminC,
                      mode: OrderingMode.desc,
                    ),
              ])
              ..limit(limit))
            .get();
      case 'dietaryFiber':
        schemas = await (_db.select(_db.dictionaryItemsTable)
              ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
                      expression: t.dietaryFiber,
                      mode: OrderingMode.desc,
                    ),
              ])
              ..limit(limit))
            .get();
      case 'salt':
        schemas = await (_db.select(_db.dictionaryItemsTable)
              ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
                      expression: t.salt,
                      mode: OrderingMode.desc,
                    ),
              ])
              ..limit(limit))
            .get();
      case 'vitamin':
        schemas = await (_db.select(_db.dictionaryItemsTable)
              ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
                      expression: t.retinol / const Variable<double>(1000) + t.vitaminB1 + t.vitaminB2 + t.vitaminC,
                      mode: OrderingMode.desc,
                    ),
              ])
              ..limit(limit))
            .get();
      case 'mineral':
        schemas = await (_db.select(_db.dictionaryItemsTable)
              ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
                      expression: t.calcium + t.magnesium + t.iron + t.zinc,
                      mode: OrderingMode.desc,
                    ),
              ])
              ..limit(limit))
            .get();
      default:
        throw SQLiteException("Failed to find nutrient '$nutrient'");
    }

    for (final DictionaryItemsSchema schema in schemas) {
      items.add(DictionaryItemModel.fromDrift(schema));
    }

    return items;
  }
}
