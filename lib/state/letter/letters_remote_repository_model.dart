import 'package:freezed_annotation/freezed_annotation.dart';

part 'letters_remote_repository_model.freezed.dart';

@freezed
class LettersRemoteRepositoryModel with _$LettersRemoteRepositoryModel {
  const factory LettersRemoteRepositoryModel({
    String? pageToken,
    @Default(false) bool isNotNextPage,
  }) = _LettersRemoteRepositoryModel;
}
