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

  factory OriginModel.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    if (!doc.exists) throw const FirestoreException('Failed to convert Firestore to OriginModel');

    final Map<String, dynamic> data = doc.data()!;

    return OriginModel(
      date: (data['date'] as Timestamp).toDate(),
      categories: (data['categories'] as Map<String, dynamic>).entries
          .map(OriginCategoryModel.fromFirestore)
          .toList(),
    );
  }

  Map<String, Object> toFirestore() => <String, Object>{
    'date': date,
    'categories': categories.map((OriginCategoryModel category) => category.toFirestore()).toList(),
    'updatedAt': DateTime.now(),
  };
}
