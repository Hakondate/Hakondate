import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/model/school/school_model.dart';
import 'package:hakondate/repository/local/sqlite/schools/schools_local_repository.dart';

part 'information_view_model.g.dart';

@riverpod
InformationViewModel informationViewModel (InformationViewModelRef ref) {
  final SchoolsLocalRepository schoolsLocalRepository = ref.watch(schoolsLocalRepositoryProvider);
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
    
    return '';
  }

  // TODO: リンクをタップした時の関数
  Future<void> onTap() async {}
}
