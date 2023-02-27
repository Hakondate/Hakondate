import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/model/letter/letter_metadata_model.dart';

part 'letter_state.freezed.dart';

@freezed
class LetterState with _$LetterState {
  const factory LetterState({
    @Default(<LetterMetadataModel>[]) List<LetterMetadataModel> letters,
    LetterMetadataModelData? letter,
    @Default(LetterConnectionStatus.done) LetterConnectionStatus status,
  }) = _LetterState;
}

enum LetterConnectionStatus {
  loading,
  done;
}
