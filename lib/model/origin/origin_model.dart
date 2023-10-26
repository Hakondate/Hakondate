import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/model/origin/origin_category_model.dart';
import 'package:hakondate/util/exception/firestore_exception.dart';

export 'package:hakondate/model/origin/origin_category_model.dart';

part 'origin_model.freezed.dart';

@freezed
class OriginModel with _$OriginModel {
  const factory OriginModel({
    required DateTime date,
    required List<OriginCategoryModel> categories,
  }) = _OriginModel;
  const OriginModel._();

  factory OriginModel.fromFirestore(DocumentSnapshot<Map<String, dynamic>> originRef) {
    final Map<String, dynamic>? data = originRef.data();

    if (data == null) throw const FirestoreException('Faild to convert Firestore to OriginModel');

    return OriginModel(
      date: (data['date'] as Timestamp).toDate(),
      categories: (data['origins'] as Map<String, Map<String, List<String>>>).entries.map(
        (MapEntry<String, Map<String, List<String>>> category) => OriginCategoryModel.fromFirestore(
          name: category.key,
          items: category.value,
        ),
      ).toList(),
    );
  }
}
