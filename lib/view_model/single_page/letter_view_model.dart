import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate/repository/remote/letters_remote_repository.dart';
import 'package:hakondate/state/letter/letter_state.dart';

final letterProvider = StateNotifierProvider<LetterViewModel, LetterState>((ref) {
  final LettersRemoteRepository lettersRemoteRepository = ref.watch(lettersRemoteRepositoryProvider);
  return LetterViewModel(lettersRemoteRepository);
});

class LetterViewModel extends StateNotifier<LetterState> {
  LetterViewModel(this._lettersRemoteRepository) : super(const LetterState()) {
    getLetters();
  }

  final LettersRemoteRepository _lettersRemoteRepository;

  Future<void> getLetters() async {
    if (isNotNextPage()) return;

    state = state.copyWith(
      letters: [...state.letters, ...await _lettersRemoteRepository.getList()],
    );
  }

  bool isNotNextPage() => _lettersRemoteRepository.state.isNotNextPage;
}
