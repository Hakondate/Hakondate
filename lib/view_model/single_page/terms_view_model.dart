import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate_v2/state/terms/terms_state.dart';

final termsProvider = StateNotifierProvider<TermsViewModel, TermsState>((ref) => TermsViewModel());

class TermsViewModel extends StateNotifier<TermsState> {
  TermsViewModel() : super(const TermsState());

  void onTap() => state = state.copyWith(isAgree: !state.isAgree);
}
