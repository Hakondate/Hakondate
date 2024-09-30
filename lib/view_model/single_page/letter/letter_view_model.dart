import 'dart:typed_data';

import 'package:flutter/widgets.dart';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/constant/firebase_apis.dart';
import 'package:hakondate/model/letter/letter_metadata_model.dart';
import 'package:hakondate/model/school/school_model.dart';
import 'package:hakondate/repository/local/sqlite/schools/schools_local_repository.dart';
import 'package:hakondate/repository/remote/letters/letters_remote_repository.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/state/letter/letter_state.dart';
import 'package:hakondate/util/analytics_controller/analytics_controller.dart';
import 'package:hakondate/view_model/multi_page/scroll/scroll_view_model.dart';

part 'letter_view_model.g.dart';

@Riverpod(keepAlive: true)
class LetterViewModel extends _$LetterViewModel {
  late final LettersRemoteRepositoryAPI _lettersRemoteRepository;
  late final SchoolsLocalRepositoryAPI _schoolsLocalRepository;

  @override
  LetterState build() {
    _lettersRemoteRepository = ref.watch(lettersRemoteRepositoryProvider);
    _schoolsLocalRepository = ref.watch(schoolsLocalRepositoryProvider);

    return LetterState(scrollController: ref.read(scrollViewModelProvider(path: '/home/letter')));
  }

  Future<void> getLetters() async {
    if (state.isEndListing) return;

    final List<LetterMetadataModel> currentLetters = state.letters;
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      state = state.copyWith(
        status: LetterConnectionStatus.loading,
        letters: <LetterMetadataModel>[
          ...currentLetters,
          ...List<LetterMetadataModel>.filled(
            FirestorageConstant.maxResultsSize,
            const LetterMetadataModel.loading(),
          ),
        ],
      );

      try {
        final ListResult listResult = await _lettersRemoteRepository.getListResult(pageToken: state.pageToken);
        final List<LetterMetadataModel> addedLetters = await _lettersRemoteRepository.getLetterMetadataList(items: listResult.items);
        state = state.copyWith(
          status: LetterConnectionStatus.done,
          letters: <LetterMetadataModel>[...currentLetters, ...addedLetters],
          isEndListing: listResult.nextPageToken == null,
          pageToken: listResult.nextPageToken,
        );
      } on Exception catch (_) {
        state = state.copyWith(
          status: LetterConnectionStatus.done,
          letters: currentLetters,
        );
      }
    });
  }

  Future<void> reloadLetters() async {
    state = state.copyWith(
      isEndListing: false,
      pageToken: null,
    );
    await getLetters();
  }

  Future<List<String>> getSchoolLabels(int parentId) async {
    final List<SchoolModel> schools = await _schoolsLocalRepository.getByParentId(parentId);

    return schools.map((SchoolModel school) => school.name.replaceAll('学校', '')).toList();
  }

  void transitionLetterPDF({required LetterMetadataModelData letter}) {
    state = state.copyWith(selectedLetter: letter);
    routemaster.push('/home/letter/${state.selectedLetter!.title}');
  }

  Future<Uint8List> getLetterPDF({required String path}) async {
    await ref.read(analyticsControllerProvider.notifier).logViewLetter(path);
    return _lettersRemoteRepository.get(path: path);
  }
}
