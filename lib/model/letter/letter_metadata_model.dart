import 'package:freezed_annotation/freezed_annotation.dart';

part 'letter_metadata_model.freezed.dart';

@freezed
class LetterMetadataModel with _$LetterMetadataModel {
  const factory LetterMetadataModel({
    required String title,
    required String path,
    required int parentId,
    required DateTime updateAt,
  }) = _LetterMetadataModel;
}
