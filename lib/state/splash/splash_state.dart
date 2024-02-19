import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.freezed.dart';
part 'loading_status.dart';

@freezed
class SplashState with _$SplashState {
  factory SplashState({
    LoadingStatus status = LoadingStatus.unloading,
  }) =>
      SplashState.load(status: status);

  const factory SplashState.load({required LoadingStatus status}) = SplashStateLoad;
  const factory SplashState.error({required Exception error}) = SplashStateError;
}
