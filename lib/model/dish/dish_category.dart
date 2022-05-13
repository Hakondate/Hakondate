part of 'dish_model.dart';

enum DishCategory {
  main(value: 'main'),
  drink(value: 'drink'),
  side(value: 'side');

  const DishCategory({required this.value});
  final String value;
}

extension DishModelExtension on DishCategory? {
  String getValue() {
    switch (this) {
      case DishCategory.main:
        return 'main';
      case DishCategory.drink:
        return 'drink';
      case DishCategory.side:
        return 'side';
      default:
        return 'side';
    }
  }
}
