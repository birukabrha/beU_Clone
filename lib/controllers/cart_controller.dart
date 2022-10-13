import 'package:beu_clone/models/food_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var foods = {}.obs;

  void addFood(Food food) {
    print(food.restaurant.name);

    if (foods.containsKey(food)) {
      foods[food] += 1;
    } else if (foods.isEmpty ||
        foods.keys.toList()[0].restaurant.name == food.restaurant.name) {
      foods[food] = 1;
    } else {
      foods.clear();
      foods[food] = 1;
    }
  }

  void removeFood(Food food) {
    if (foods.containsKey(food) && foods[food] == 1) {
      foods.removeWhere((key, value) => key == food);
    } else {
      foods[food] -= 1;
    }
  }

  get foodSubtotal =>
      foods.entries.map((food) => food.key.newPrice * food.value).toList();

  get allTotal => foods.entries
      .map((food) => food.key.newPrice * food.value)
      .toList()
      .reduce((value, element) => value + element)
      .toString();

  get totalFoods => foods.forEach((key, value) {});
  num totalFoodss() {
    num sum = 0;
    foods.values.toList().forEach((element) {
      sum += element;
    });
    return sum;
  }
}
