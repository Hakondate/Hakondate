import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/model/letter/letter_metadata_model.dart';

part 'letter_state.freezed.dart';

@freezed
class LetterState with _$LetterState {
  const factory LetterState({
    required ScrollController scrollController,
    @Default(LetterConnectionStatus.done) LetterConnectionStatus status,
    @Default(<LetterMetadataModel>[]) List<LetterMetadataModel> letters,
    @Default(false) bool isEndListing,
    LetterMetadataModelData? selectedLetter,
    String? pageToken,
  }) = _LetterState;
}

enum LetterConnectionStatus {
  loading,
  done;
}
