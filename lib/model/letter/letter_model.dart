import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'letter_model.freezed.dart';

@freezed
class LetterModel with _$LetterModel {
  const factory LetterModel({
    required int id,
    required String title,
    String? description,
    required File content,
    required DateTime updateAt,
  }) = _LetterModel;
}
