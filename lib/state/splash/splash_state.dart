import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.freezed.dart';
part 'loading_status.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState({
    @Default(LoadingStatus.unloading) LoadingStatus loadingStatus,
    @Default(false) bool isErrorOccurring,
  }) = _SplashState;
}
