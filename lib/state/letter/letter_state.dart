import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/model/letter/letter_metadata_model.dart';
import 'package:hakondate/view/component/frame/stateful_wrapper.dart';

part 'letter_state.freezed.dart';

@freezed
class LetterState with _$LetterState {
  const factory LetterState({
    required ScrollController scrollController,
    @Default(LetterConnectionStatus.done) LetterConnectionStatus status,
    @Default(<LetterMetadataModel>[]) List<LetterMetadataModel> letters,
    LetterMetadataModelData? selectedLetter,
    @Default(false) bool isEndListing,
    String? pageToken,
  }) = _LetterState;

  // Widget when({required StatefulWrapper Function(LetterState data) data, required Text Function(dynamic _, dynamic __) error, required Text Function() loading}) {}
}

enum LetterConnectionStatus {
  loading,
  done;
}
