import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/model/origin/origin_model.dart';
import 'package:hakondate/repository/remote/origins/origins_remote_repository.dart';
import 'package:hakondate/state/origin/origin_state.dart';

part 'origin_view_model.g.dart';

@riverpod
class OriginViewModel extends _$OriginViewModel {
  @override
  FutureOr<OriginState> build() async {
    final OriginsRemoteRepositoryAPI originsRemoteRepository = ref.watch(originsRemoteRepositoryProvider);
    final List<OriginModel> origins = await originsRemoteRepository.list();
    final OriginModel selectedOrigin = await originsRemoteRepository.getById().catchError((_) => origins.first);

    return OriginState(
      origins: origins,
      selectedOrigin: selectedOrigin,
    );
  }

  Future<void> updateSelectedOrigin({required OriginModel origin}) async {
    state.whenData((OriginState data) async {
      state = AsyncData<OriginState>(
        data.copyWith(
          selectedOrigin: origin,
        ),
      );
    });
  }
}
