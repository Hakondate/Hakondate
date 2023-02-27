import 'dart:typed_data';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/model/letter/letter_metadata_model.dart';
import 'package:hakondate/model/school/school_model.dart';
import 'package:hakondate/repository/local/sqlite/schools_local_repository.dart';
import 'package:hakondate/repository/remote/letters_remote_repository.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/state/letter/letter_state.dart';

final letterProvider = StateNotifierProvider<LetterViewModel, LetterState>((ref) {
  final LettersRemoteRepository lettersRemoteRepository = ref.watch(lettersRemoteRepositoryProvider);
  final SchoolsLocalRepository schoolsLocalRepository = ref.watch(schoolsLocalRepositoryProvider);
  return LetterViewModel(lettersRemoteRepository, schoolsLocalRepository);
});

class LetterViewModel extends StateNotifier<LetterState> {
  LetterViewModel(this._lettersRemoteRepository, this._schoolsLocalRepository) : super(const LetterState()) {
    getLetters();
  }

  final LettersRemoteRepository _lettersRemoteRepository;
  final SchoolsLocalRepository _schoolsLocalRepository;

  Future<void> getLetters() async {
    if (isEndListing()) return;

    final List<LetterMetadataModel> currentLetters = state.letters;
    state = state.copyWith(
      letters: [
        ...state.letters,
        ...List.filled(
          _lettersRemoteRepository.state.maxResults,
          const LetterMetadataModel.loading(),
        ),
      ],
      status: LetterConnectionStatus.loading,
    );

    try {
      final List<LetterMetadataModel> addLetters = await _lettersRemoteRepository.getList();
      state = state.copyWith(
        letters: [...currentLetters, ...addLetters],
        status: LetterConnectionStatus.done,
      );
    } on Exception catch (_) {
      state = state.copyWith(
        letters: currentLetters,
        status: LetterConnectionStatus.done,
      );
    }
  }

  Future<void> reloadLetters() async {
    _lettersRemoteRepository.resetPageToken();
    state = state.copyWith(
      letters: [],
    );
    await getLetters();
  }

  Future<List<String>> getSchoolLabels(int parentId) async {
    final List<SchoolModel> schools = await _schoolsLocalRepository.getByParentId(parentId);

    return schools.map((school) => school.name.replaceAll('学校', '')).toList();
  }

  bool isEndListing() => _lettersRemoteRepository.state.isEndListing;

  void transitionLetterPDF({required LetterMetadataModelData letter}) {
    state = state.copyWith(letter: letter);
    routemaster.push('/home/letter/${state.letter!.title}');
  }

  Future<Uint8List> getLetterPDF({required String path}) async =>
      await _lettersRemoteRepository.get(path: path);
}
