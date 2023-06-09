import 'dart:typed_data';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/model/letter/letter_metadata_model.dart';
import 'package:hakondate/model/school/school_model.dart';
import 'package:hakondate/repository/local/sqlite/schools/schools_local_repository.dart';
import 'package:hakondate/repository/remote/letters/letters_remote_repository.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/state/letter/letter_state.dart';
import 'package:hakondate/util/analytics_controller/analytics_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'letter_view_model.g.dart';

@Riverpod(keepAlive: true)
class LetterViewModel extends _$LetterViewModel {
  late final LettersRemoteRepository _lettersRemoteRepository;
  late final SchoolsLocalRepository _schoolsLocalRepository;

  @override
  LetterState build() {
    _lettersRemoteRepository = ref.watch(lettersRemoteRepositoryProvider as AlwaysAliveProviderListenable<LettersRemoteRepository>);
    _schoolsLocalRepository = ref.watch(schoolsLocalRepositoryProvider);

    // TODO(micady): ここの処理ちゃんとする
    getLetters();

    return const LetterState();
  }

  Future<void> getLetters() async {
    if (isEndListing()) return;

    final List<LetterMetadataModel> currentLetters = state.letters;
    state = state.copyWith(
      letters: <LetterMetadataModel>[
        ...state.letters,
        ...List<LetterMetadataModel>.filled(
          _lettersRemoteRepository.getMaxResultsSize(),
          const LetterMetadataModel.loading(),
        ),
      ],
      status: LetterConnectionStatus.loading,
    );

    try {
      final List<LetterMetadataModel> addLetters = await _lettersRemoteRepository.getList();
      state = state.copyWith(
        letters: <LetterMetadataModel>[...currentLetters, ...addLetters],
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
      letters: <LetterMetadataModel>[],
    );
    await getLetters();
  }

  Future<List<String>> getSchoolLabels(int parentId) async {
    final List<SchoolModel> schools = await _schoolsLocalRepository.getByParentId(parentId);

    return schools.map((SchoolModel school) => school.name.replaceAll('学校', '')).toList();
  }

  bool isEndListing() => _lettersRemoteRepository.getIsEndListing();

  void transitionLetterPDF({required LetterMetadataModelData letter}) {
    state = state.copyWith(letter: letter);
    routemaster.push('/home/letter/${state.letter!.title}');
  }

  Future<Uint8List> getLetterPDF({required String path}) async {
    await ref.read(analyticsControllerProvider.notifier).logViewLetter(path);
    return _lettersRemoteRepository.get(path: path);
  }
}
