import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/repository/local/sqlite/local_database.dart';
import 'package:hakondate/util/exception/firestore_exception.dart';

part 'school_model.freezed.dart';
part 'school_classification.dart';

@freezed
class SchoolModel with _$SchoolModel {
  const factory SchoolModel({
    /// ID
    required int id,

    /// 親学校(給食センター)のID
    required int parentId,

    /// 学校名
    required String name,

    /// 学校区分
    required SchoolClassification classification,

    /// 給食区分: 1 ~ 10
    required int lunchBlock,
  }) = _SchoolModel;
  const SchoolModel._();

  factory SchoolModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) {
    if (!doc.exists) {
      throw const FirestoreException(
        'Failed to convert Firestore to SchoolModel',
      );
    }

    final Map<String, dynamic> data = doc.data()!;
    final SchoolClassification classification =
        switch (data['classification'] as String) {
      'primary' => SchoolClassification.primary,
      'secondary' => SchoolClassification.secondary,
      _ => SchoolClassification.secondary,
    };

    return SchoolModel(
      id: data['id'] as int,
      parentId: data['parentId'] as int,
      name: data['name'] as String,
      classification: classification,
      lunchBlock: data['lunchBlock'] as int,
    );
  }

  factory SchoolModel.fromDrift(SchoolsSchema schema) {
    final SchoolClassification classification = switch (schema.classification) {
      'primary' => SchoolClassification.primary,
      'secondary' => SchoolClassification.secondary,
      _ => SchoolClassification.secondary,
    };

    return SchoolModel(
      id: schema.id,
      parentId: schema.parentId,
      name: schema.name,
      classification: classification,
      lunchBlock: schema.lunchBlock,
    );
  }

  Map<String, Object> toFirestore() => <String, Object>{
        'id': id,
        'parentId': parentId,
        'name': name,
        'classification': classification.name,
        'lunchBlock': lunchBlock,
        'updatedAt': DateTime.now(),
      };

  SchoolsTableCompanion toDrift() => SchoolsTableCompanion(
        id: Value<int>(id),
        parentId: Value<int>(parentId),
        name: Value<String>(name),
        classification: Value<String>(classification.name),
        lunchBlock: Value<int>(lunchBlock),
        updateAt: Value<DateTime>(DateTime.now()),
      );
}
