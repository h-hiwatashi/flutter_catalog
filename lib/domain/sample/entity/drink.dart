import 'package:freezed_annotation/freezed_annotation.dart';

part 'drink.freezed.dart';

@freezed
sealed class DrinkClass with _$DrinkClass {
  factory DrinkClass.fromDto(bool isCoffee) {
    if (isCoffee) {
      return const DrinkClass.coffee(
        name: 'coffee',
        price: 100,
        isNeedSugar: true,
      );
    } else {
      return const DrinkClass.milk(
        name: 'milk',
        price: 50,
        isHot: 50,
      );
    }
  }

  const DrinkClass._();
  const factory DrinkClass.coffee({
    required String name,
    required int price,
    required bool isNeedSugar,
  }) = _Coffee;
  const factory DrinkClass.milk({
    required String name,
    required int price,
    required int isHot,
  }) = _Milk;
}
