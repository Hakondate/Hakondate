part of 'splash_state.dart';

enum LoadingStatus {
  unloading(imageFileName: 'data_reading.gif'),
  reading(imageFileName: 'data_reading.gif'),
  checkingUpdate(imageFileName: 'checking.gif'),
  updating(imageFileName: 'data_updating.gif');

  const LoadingStatus({required this.imageFileName});
  final String imageFileName;

  String get imagePath => 'assets/loading_animation/$imageFileName';
}
