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
    if (isNotNextPage()) return;

    state = state.copyWith(
      letters: [...state.letters, ...await _lettersRemoteRepository.getList()],
    );
  }

  Future<List<String>> getSchoolLabels(int parentId) async {
    final List<SchoolModel> schools = await _schoolsLocalRepository.getByParentId(parentId);

    return schools.map((school) => school.name.replaceAll('学校', '')).toList();
  }

  bool isNotNextPage() => _lettersRemoteRepository.state.isNotNextPage;

  void transitionLetterPDF({required LetterMetadataModel letter}) {
    state = state.copyWith(letter: letter);
    routemaster.push('/home/letter/${state.letter!.title}');
  }

  Future<Uint8List> getLetterPDF({required String path}) async =>
      await _lettersRemoteRepository.get(path: path);
}
