import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hakondate/model/origin/origin_model.dart';


part 'origin_state.freezed.dart';

@freezed
class OriginState with _$OriginState {
  const factory OriginState({
    required List<OriginModel> origins,
    required OriginModel selectedOrigin,
  }) = _OriginState;
}
