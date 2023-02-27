import 'package:freezed_annotation/freezed_annotation.dart';

part 'letters_remote_repository_model.freezed.dart';

@freezed
class LettersRemoteRepositoryModel with _$LettersRemoteRepositoryModel {
  const factory LettersRemoteRepositoryModel({
    required int maxResults,
    String? pageToken,
    @Default(false) bool isEndListing,
  }) = _LettersRemoteRepositoryModel;
}
