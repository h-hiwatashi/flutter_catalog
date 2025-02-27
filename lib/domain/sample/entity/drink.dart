import 'package:freezed_annotation/freezed_annotation.dart';

part 'drink.freezed.dart';

@freezed
sealed class Drink with _$Drink {
  factory Drink.fromDto(bool isCoffee) {
    if (isCoffee) {
      return const Drink.coffee(
        name: 'coffee',
        price: 100,
        isNeedSugar: true,
      );
    } else {
      return const Drink.milk(
        name: 'milk',
        price: 50,
        isHot: 50,
      );
    }
  }

  const Drink._();
  const factory Drink.coffee({
    required String name,
    required int price,
    required bool isNeedSugar,
  }) = _Coffee;
  const factory Drink.milk({
    required String name,
    required int price,
    required int isHot,
  }) = _Milk;
}
