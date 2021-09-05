import 'package:flutter_riverpod/flutter_riverpod.dart';

final isAgreedProvider = StateNotifierProvider<IsAgreed, bool>((ref) => IsAgreed());

class IsAgreed extends StateNotifier<bool> {
  IsAgreed() : super(false);

  void tapped() => state = !state;
}