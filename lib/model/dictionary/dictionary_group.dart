part of 'dictionary_item_model.dart';

enum DictionaryGroup {
  grains(groupNumber: 1, label: '穀類', color: Color(0xFFF2BE90)),
  starches(groupNumber: 2, label: 'いもでん粉類', color: Color(0xFFE7EF8F)),
  sweeteners(groupNumber: 3, label: '砂糖甘味類', color: Color(0xFF79CAD9)),
  pulse(groupNumber: 4, label: '豆類', color: Color(0xFFF9E08E)),
  nutsAndBolts(groupNumber: 5, label: '種実類', color: Color(0xFFEDA591)),
  vegetables(groupNumber: 6, label: '野菜類', color: Color(0xFF7BD588)),
  fruits(groupNumber: 7, label: '果実類', color: Color(0xFFEB9C92)),
  mushrooms(groupNumber: 8, label: 'きのこ類', color: Color(0xFFEFAB90)),
  algae(groupNumber: 9, label: '藻類', color: Color(0xFF7BD588)),
  seafood(groupNumber: 10, label: '魚介類', color: Color(0xFF95AFDA)),
  meat(groupNumber: 11, label: '肉類', color: Color(0xFFE592A0)),
  roe(groupNumber: 12, label: '卵類', color: Color(0xFFFEF18E)),
  mammalian(groupNumber: 13, label: '乳類', color: Color(0xFF79C3DB)),
  fatsAndOils(groupNumber: 14, label: '油脂類', color: Color(0xFFF8DC8E)),
  confectioneries(groupNumber: 15, label: '菓子類', color: Color(0xFFBB9CD2)),
  tastyBeverages(groupNumber: 16, label: '嗜好飲料類', color: Color(0xFFD58BBB)),
  seasoningsAndSpices(groupNumber: 17, label: '調味料香辛料類', color: Color(0xFFE590A3)),
  cookedAndProcessed(groupNumber: 18, label: '調理加工食品類', color: Color(0xFF7CBFDF));

  const DictionaryGroup({
    required this.groupNumber,
    required this.label,
    required this.color,
  });
  final int groupNumber;
  final String label;
  final Color color;

  String get displayLabel {
    switch (this) {
      case DictionaryGroup.starches:
        return 'いも\nでん粉類';
      case DictionaryGroup.seasoningsAndSpices:
        return '調味料\n香辛料類';
      case DictionaryGroup.cookedAndProcessed:
        return '調理加工\n食品類';

      case DictionaryGroup.grains:
      case DictionaryGroup.sweeteners:
      case DictionaryGroup.pulse:
      case DictionaryGroup.nutsAndBolts:
      case DictionaryGroup.vegetables:
      case DictionaryGroup.fruits:
      case DictionaryGroup.mushrooms:
      case DictionaryGroup.algae:
      case DictionaryGroup.seafood:
      case DictionaryGroup.meat:
      case DictionaryGroup.roe:
      case DictionaryGroup.mammalian:
      case DictionaryGroup.fatsAndOils:
      case DictionaryGroup.confectioneries:
      case DictionaryGroup.tastyBeverages:
        return label;
    }
  }
}
