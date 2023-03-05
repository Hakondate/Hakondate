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
  Future<int> add(Map<String, String> item) async {
    final DictionaryItemsTableCompanion companion = DictionaryItemsTableCompanion(
      group: Value<int>(int.parse(item['group']!)),
      name: Value<String>(item['name']!),
      energy: Value<double>(double.parse(item['energy']!)),
      protein: Value<double>(double.parse(item['protein']!)),
      lipid: Value<double>(double.parse(item['lipid']!)),
      carbohydrate: Value<double>(double.parse(item['carbohydrate']!)),
      sodium: Value<double>(double.parse(item['sodium']!)),
      calcium: Value<double>(double.parse(item['calcium']!)),
      magnesium: Value<double>(double.parse(item['magnesium']!)),
      iron: Value<double>(double.parse(item['iron']!)),
      zinc: Value<double>(double.parse(item['zinc']!)),
      retinol: Value<double>(double.parse(item['retinol']!)),
      vitaminB1: Value<double>(double.parse(item['vitaminB1']!)),
      vitaminB2: Value<double>(double.parse(item['vitaminB2']!)),
      vitaminC: Value<double>(double.parse(item['vitaminC']!)),
      dietaryFiber: Value<double>(double.parse(item['dietaryFiber']!)),
      salt: Value<double>(double.parse(item['salt']!)),
      note: Value<String?>(item['note']),
    );

    return _db.into(_db.dictionaryItemsTable).insert(companion);
  }

  @override
  Future<DictionaryItemModel> getById(int id) async {
    final DictionaryItemsSchema schema = await (_db.select(_db.dictionaryItemsTable)
      ..where(($DictionaryItemsTableTable t) => t.id.equals(id))).getSingle();

    return DictionaryItemModel(
      id: schema.id,
      group: schema.group,
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
          group: schema.group,
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
    final List<String> nutrientNames = <String>[
      'energy',
      'protein',
      'lipid',
      'carbohydrate',
      'sodium',
      'calcium',
      'magnesium',
      'iron',
      'zinc',
      'retinol',
      'vitaminB1',
      'vitaminB2',
      'vitaminC',
      'dietaryFiber',
      'salt',
    ];

    if (!nutrientNames.contains(nutrient)) {
      throw SQLiteException("Failed to find nutrient '$nutrient'");
    }

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
      default:
        throw SQLiteException("Failed to find nutrient '$nutrient'");
    }

    for (final DictionaryItemsSchema schema in schemas) {
      items.add(
        DictionaryItemModel(
          id: schema.id,
          group: schema.group,
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
}
