import 'package:hakondate_v2/model/nutrients/nutrients_model.dart';
import 'package:hakondate_v2/model/school/users_school_model.dart';

// School Lunch Nutrition Standards (SLNS) : 学校給食摂取基準
class SLNSModel extends NutrientsModel {
  SLNSModel({required UsersSchoolModel school}) {
    _getSLNS(school);
  }

  Future<NutrientsModel> _getSLNS(UsersSchoolModel school) async {
    return NutrientsModel();
  }
}