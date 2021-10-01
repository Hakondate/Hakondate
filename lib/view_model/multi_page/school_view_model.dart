import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate_v2/repository/local/schools_local_repository.dart';
import 'package:hakondate_v2/repository/remote/schools_remote_repository.dart';

import 'package:hakondate_v2/state/school/school_state.dart';

final schoolProvider = StateNotifierProvider<SchoolViewModel, SchoolState>((ref) => SchoolViewModel());

class SchoolViewModel extends StateNotifier<SchoolState> {
  SchoolViewModel()
      : this._localRepository = SchoolsLocalRepository(),
        this._remoteRepository = SchoolsRemoteRepository(),
        super(SchoolState());

  final SchoolsLocalRepository _localRepository;
  final SchoolsRemoteRepository _remoteRepository;

  Stream<String> initialize() async* {
    yield 'Reading';
    List<dynamic> _schools = [];

    yield 'CheckingUpdate';
    if (await _localRepository.count() == 0) {
      yield 'Updating';
      _schools = await _remoteRepository.downloadAllSchool();
    } else if (await _remoteRepository.checkUpdate()) {
      yield 'Updating';
      _schools = await _remoteRepository.downloadUpdate();
    }

    await Future.forEach(_schools, (dynamic school) async {
      await _localRepository.add(school);
    });
  }
}
