part of 'dish_model.dart';

enum DishCategory {
  main(value: 'main'),
  drink(value: 'drink'),
  side(value: 'side');

  const DishCategory({required this.value});
  final String value;
}
