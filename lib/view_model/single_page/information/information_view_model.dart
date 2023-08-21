import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:hakondate/model/school/school_model.dart';
import 'package:hakondate/repository/local/sqlite/schools/schools_local_repository.dart';

part 'information_view_model.g.dart';

@riverpod
InformationViewModel informationViewModel(InformationViewModelRef ref) {
  final SchoolsLocalRepository schoolsLocalRepository =
      ref.watch(schoolsLocalRepositoryProvider);
  return InformationViewModel(schoolsLocalRepository);
}

class InformationViewModel {
  const InformationViewModel(this._schoolLocalRepository);

  final SchoolsLocalRepositoryAPI _schoolLocalRepository;

  // TODO: 学校のリストを文字列で返却する関数
  /**
   * 期待値：
   *  '巴中学校\n青柳中学校'
   * 
   * ルール：
   *  1. DBに入っている学校の名前の一覧をStringで返す
   *  2. 各学校名は改行でつなげる
   *  3. 学校はID順で返す（昇順）
   *  4. DBの学校が0個の場合は'協力学校を募集しています'と返す
   */
  Future<String> getSchoolNameListText() async {
    final List<SchoolModel> schools = await _schoolLocalRepository.list();
    if (schools.isNotEmpty) {
      schools.sort((SchoolModel a, SchoolModel b) => a.id.compareTo(b.id));
      final StringBuffer buffer = StringBuffer();
      for (int i = 1; i < schools.length; i++) {
        buffer.write('${schools[i].name}\n');
      }
      return buffer.toString();
    } else {
      return '協力学校を募集しています';
    }
  }

  // TODO: リンクをタップした時の関数

  Future<void> onTap({required String scheme, required String path}) async {
    final Uri uri = Uri(
      scheme: scheme, //'mailto'
      path: path, //'editorhakondate@gmail.com',
    );
    if(scheme == 'mailto'){
      print(scheme);
      final Uri emailLaunchUri = Uri(
     scheme: 'mailto',
     path: path,
     query: encodeQueryParameters(<String, String>{
      'subject': 'Example Subject & Symbols are allowed!',
    }),

     );
     await launchUrl(emailLaunchUri);}
    
    if (await canLaunchUrl(
      Uri.parse(uri.toString()),
    )) {
      await launchUrl(
        Uri.parse(uri.toString()),
        mode: LaunchMode.inAppWebView,
      );
    }
  }
  
  String? encodeQueryParameters(Map<String, String> params) {
  return params.entries
      .map((MapEntry<String, String> e) =>
          '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
      .join('&');
}
}
