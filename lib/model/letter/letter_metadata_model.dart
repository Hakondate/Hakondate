import 'package:freezed_annotation/freezed_annotation.dart';

part 'letter_metadata_model.freezed.dart';

@freezed
class LetterMetadataModel with _$LetterMetadataModel {
  factory LetterMetadataModel({
    required String title,
    required String path,
    required int parentId,
    required DateTime updateAt,
  }) => LetterMetadataModel.data(
    title: title,
    path: path,
    parentId: parentId,
    updateAt: updateAt,
  );

  const factory LetterMetadataModel.data({
    required String title,
    required String path,
    required int parentId,
    required DateTime updateAt,
  }) = LetterMetadataModelData;
  const factory LetterMetadataModel.loading() = LetterMetadataModelLoading;
}
