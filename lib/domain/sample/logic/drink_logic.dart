import '../entity/drink.dart';

class DrinkLogic {
  // final DrinkRepository _drinkRepository;

  // DrinkLogic(this._drinkRepository);

  // Future<List<Drink>> getDrinks() async {
  //   return _drinkRepository.getDrinks();
  // }

  final coffee = Drink.fromDto(true);
  final milk = Drink.fromDto(false);

  void printDrinks() {
    print(coffee);
    print(milk);
  }
}
