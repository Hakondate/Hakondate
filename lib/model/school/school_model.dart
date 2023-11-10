import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hakondate/util/exception/firestore_exception.dart';

part 'school_model.freezed.dart';
part 'school_classification.dart';

@freezed
class SchoolModel with _$SchoolModel {
  const factory SchoolModel({
    required int id,                              // ID
    required int parentId,                        // 親学校(給食センター)のID
    required String name,                         // 学校名
    required SchoolClassification classification, // 学校区分
    int? lunchBlock,                              // 給食区分: 1 ~ 10
  }) = _SchoolModel;

  factory SchoolModel.fromFirebase(DocumentSnapshot<Map<String, dynamic>> doc) {
    final Map<String, dynamic>? data = doc.data();

    if (data == null) throw const FirestoreException('Failed to convert Firestore to SchoolModel');

    final SchoolClassification classification = switch (data['classification'] as String) {
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
}
