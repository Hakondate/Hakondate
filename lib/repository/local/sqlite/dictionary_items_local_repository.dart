import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/model/dictionary/dictionary_item_model.dart';
import 'package:hakondate/model/nutrients/nutrients_model.dart';
import 'package:hakondate/repository/local/sqlite/local_database.dart';
import 'package:hakondate/util/exception/sqlite_exception.dart';

final Provider<DictionaryItemsLocalRepository> dictionaryItemsLocalRepositoryProvider =
    Provider<DictionaryItemsLocalRepository>((ProviderRef<DictionaryItemsLocalRepository> ref) {
  final LocalDatabase localDatabase = ref.watch(localDatabaseProvider);
  return DictionaryItemsLocalRepository(localDatabase);
});

abstract class DictionaryItemsLocalRepositoryBase {
  Future<int> add(Map<String, String> item);
  Future<List<DictionaryItemModel>> getGroup(int group);
  Future<DictionaryItemModel> getById(int id);
  Future<List<DictionaryItemModel>> getRanking({required String nutrient, int limit = 5});
}

class DictionaryItemsLocalRepository extends DictionaryItemsLocalRepositoryBase {
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
    final DictionaryItemsSchema? conflictSchema =
      await (_db.select(_db.dictionaryItemsTable)..where(($DictionaryItemsTableTable t) =>
          t.group.equals(companion.group.value) &
          t.name.equals(companion.name.value),
    )).getSingleOrNull();

    if (conflictSchema == null) {
      return _db.into(_db.dictionaryItemsTable).insert(companion);
    } else {
      return (_db.update(_db.dictionaryItemsTable)..where(($DictionaryItemsTableTable t) =>
        t.group.equals(companion.group.value) &
        t.name.equals(companion.name.value),
      )).write(
        DictionaryItemsTableCompanion(
          energy: companion.energy,
          protein: companion.protein,
          lipid: companion.lipid,
          carbohydrate: companion.carbohydrate,
          sodium: companion.sodium,
          calcium: companion.calcium,
          magnesium: companion.magnesium,
          iron: companion.iron,
          zinc: companion.zinc,
          retinol: companion.retinol,
          vitaminB1: companion.vitaminB1,
          vitaminB2: companion.vitaminB2,
          vitaminC: companion.vitaminC,
          dietaryFiber: companion.dietaryFiber,
          salt: companion.salt,
          note: companion.note,
        ),
      );
    }
  }

  @override
  Future<DictionaryItemModel> getById(int id) async {
    final DictionaryItemsSchema schema = await (_db.select(_db.dictionaryItemsTable)
      ..where(($DictionaryItemsTableTable t) => t.id.equals(id))).getSingle();

    return DictionaryItemModel(
      id: schema.id,
      group: _getGroup(schema.group),
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

  @override
  Future<List<DictionaryItemModel>> getGroup(int group) async {
    final List<DictionaryItemModel> items = <DictionaryItemModel>[];
    final List<DictionaryItemsSchema> schemas = await (_db.select(_db.dictionaryItemsTable)
      ..where(($DictionaryItemsTableTable t) => t.group.equals(group))).get();

    for (final DictionaryItemsSchema schema in schemas) {
      items.add(
        DictionaryItemModel(
          id: schema.id,
          group: _getGroup(schema.group),
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
        ),
      );
    }

    return items;
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
            )
          ])..limit(limit)).get();
        break;
      case 'protein':
        schemas = await (_db.select(_db.dictionaryItemsTable)
          ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
              expression: t.protein,
              mode: OrderingMode.desc,
            )
          ])..limit(limit)).get();
        break;
      case 'lipid':
        schemas = await (_db.select(_db.dictionaryItemsTable)
          ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
              expression: t.lipid,
              mode: OrderingMode.desc,
            )
          ])..limit(limit)).get();
        break;
      case 'carbohydrate':
        schemas = await (_db.select(_db.dictionaryItemsTable)
          ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
              expression: t.carbohydrate,
              mode: OrderingMode.desc,
            )
          ])..limit(limit)).get();
        break;
      case 'sodium':
        schemas = await (_db.select(_db.dictionaryItemsTable)
          ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
              expression: t.sodium,
              mode: OrderingMode.desc,
            )
          ])..limit(limit)).get();
        break;
      case 'calcium':
        schemas = await (_db.select(_db.dictionaryItemsTable)
          ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
              expression: t.calcium,
              mode: OrderingMode.desc,
            )
          ])..limit(limit)).get();
        break;
      case 'magnesium':
        schemas = await (_db.select(_db.dictionaryItemsTable)
          ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
              expression: t.magnesium,
              mode: OrderingMode.desc,
            )
          ])..limit(limit)).get();
        break;
      case 'iron':
        schemas = await (_db.select(_db.dictionaryItemsTable)
          ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
              expression: t.iron,
              mode: OrderingMode.desc,
            )
          ])..limit(limit)).get();
        break;
      case 'zinc':
        schemas = await (_db.select(_db.dictionaryItemsTable)
          ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
              expression: t.zinc,
              mode: OrderingMode.desc,
            )
          ])..limit(limit)).get();
        break;
      case 'retinol':
        schemas = await (_db.select(_db.dictionaryItemsTable)
          ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
              expression: t.retinol,
              mode: OrderingMode.desc,
            )
          ])..limit(limit)).get();
        break;
      case 'vitaminB1':
        schemas = await (_db.select(_db.dictionaryItemsTable)
          ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
              expression: t.vitaminB1,
              mode: OrderingMode.desc,
            )
          ])..limit(limit)).get();
        break;
      case 'vitaminB2':
        schemas = await (_db.select(_db.dictionaryItemsTable)
          ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
              expression: t.vitaminB2,
              mode: OrderingMode.desc,
            )
          ])..limit(limit)).get();
        break;
      case 'vitaminC':
        schemas = await (_db.select(_db.dictionaryItemsTable)
          ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
              expression: t.vitaminC,
              mode: OrderingMode.desc,
            )
          ])..limit(limit)).get();
        break;
      case 'dietaryFiber':
        schemas = await (_db.select(_db.dictionaryItemsTable)
          ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
              expression: t.dietaryFiber,
              mode: OrderingMode.desc,
            )
          ])..limit(limit)).get();
        break;
      case 'salt':
        schemas = await (_db.select(_db.dictionaryItemsTable)
          ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
              expression: t.salt,
              mode: OrderingMode.desc,
            )
          ])..limit(limit)).get();
        break;
      case 'vitamin':
        schemas = await (_db.select(_db.dictionaryItemsTable)
          ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
              expression: t.retinol * const Variable<double>(1000) + t.vitaminB1 + t.vitaminB2 + t.vitaminC,
              mode: OrderingMode.desc,
            )
          ])..limit(limit)).get();
        break;
      case 'mineral':
        schemas = await (_db.select(_db.dictionaryItemsTable)
          ..orderBy(<OrderingTerm Function($DictionaryItemsTableTable)>[
                ($DictionaryItemsTableTable t) => OrderingTerm(
              expression: t.calcium + t.magnesium + t.iron + t.zinc,
              mode: OrderingMode.desc,
            )
          ])..limit(limit)).get();
        break;
      default:
        throw SQLiteException("Failed to find nutrient '$nutrient'");
    }

    for (final DictionaryItemsSchema schema in schemas) {
      items.add(
        DictionaryItemModel(
          id: schema.id,
          group: _getGroup(schema.group),
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
        ),
      );
    }

    return items;
  }

  DictionaryGroup _getGroup(int groupNumber) =>
      DictionaryGroup.values.firstWhere((DictionaryGroup group) => group.groupNumber == groupNumber);
}
