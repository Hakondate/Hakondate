import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:hakondate/model/school/school_model.dart';
import 'package:hakondate/repository/local/sqlite/schools/schools_local_repository.dart';

part 'information_view_model.g.dart';

@riverpod
//　説明
// ignore: deprecated_member_use_from_same_package
InformationViewModel informationViewModel(InformationViewModelRef ref) {
  final SchoolsLocalRepository schoolsLocalRepository = ref.watch(schoolsLocalRepositoryProvider);
  return InformationViewModel(schoolsLocalRepository);
}

class InformationViewModel {
  const InformationViewModel(this._schoolLocalRepository);

  final SchoolsLocalRepositoryAPI _schoolLocalRepository;

  Future<String> getSchoolNameListText() async {
    final List<SchoolModel> schools = await _schoolLocalRepository.list();

    if (schools.isEmpty) return '協力学校を募集しています';

    schools.sort((SchoolModel a, SchoolModel b) => a.id.compareTo(b.id));

    return schools.map((SchoolModel school) => school.name).join('\n');
  }

  void onTap() {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'editorhakondate@gmail.com',
      query: 'subject=はこんだて運営への問い合わせ',
    );

    launchUrl(emailLaunchUri);
  }
}
