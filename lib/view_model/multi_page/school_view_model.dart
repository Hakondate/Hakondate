import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/repository/local/schools_local_repository.dart';
import 'package:hakondate_v2/repository/remote/schools_remote_repository.dart';
import 'package:hakondate_v2/state/school/school_state.dart';
import 'package:hakondate_v2/unit/enum.dart';

final schoolProvider = StateNotifierProvider<SchoolViewModel, SchoolState>(
    (ref) => SchoolViewModel());

class SchoolViewModel extends StateNotifier<SchoolState> {
  SchoolViewModel()
      : _localRepository = SchoolsLocalRepository(),
        _remoteRepository = SchoolsRemoteRepository(),
        super(const SchoolState());

  final SchoolsLocalRepository _localRepository;
  final SchoolsRemoteRepository _remoteRepository;

  Stream<LoadingStatus> initialize() async* {
    yield LoadingStatus.reading;
    List<dynamic> _schools = [];

    yield LoadingStatus.checkingUpdate;
    if (await _localRepository.count() == 0) {
      yield LoadingStatus.updating;
      _schools = await _remoteRepository.downloadAllSchool();
    } else if (await _remoteRepository.checkUpdate()) {
      yield LoadingStatus.updating;
      _schools = await _remoteRepository.downloadUpdate();
    }

    await Future.forEach(_schools, (dynamic school) async {
      await _localRepository.add(school);
    });
  }
}
