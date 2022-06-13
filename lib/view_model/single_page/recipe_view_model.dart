import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecipeViewModel extends StateNotifier<void> {
  RecipeViewModel() : super(null) {
    initialize();
  }

  Future<void> initialize() async {}
}
