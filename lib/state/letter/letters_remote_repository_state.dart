import 'package:freezed_annotation/freezed_annotation.dart';

part 'letters_remote_repository_state.freezed.dart';

@freezed
class LettersRemoteRepositoryState with _$LettersRemoteRepositoryState {
  const factory LettersRemoteRepositoryState({
    required int maxResults,
    String? pageToken,
    @Default(false) bool isEndListing,
  }) = _LettersRemoteRepositoryState;
}
