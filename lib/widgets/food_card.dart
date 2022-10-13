import 'package:beu_clone/controllers/cart_controller.dart';
import 'package:beu_clone/models/food_model.dart';
import 'package:beu_clone/models/restaurant_model.dart';
import 'package:beu_clone/screens/food_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FoodCard extends StatelessWidget {
  CartController cartController = Get.find();
  FoodCard(
      {Key? key,
      required this.index,
      required this.restaurant,
      required this.isCategory})
      : super(key: key);

  final int index;
  final Restaurant restaurant;
  final bool isCategory;

  @override
  Widget build(BuildContext context) {
    bool argument;
    if (isCategory) {
      argument = true;
    } else {
      argument = restaurant.name == Food.foods[index].restaurant.name;
    }
    return argument
        ? GestureDetector(
            onTap: () => Get.to(() => const FoodDetail(),
                arguments: [Food.foods[index]]),
            child: Container(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
              height: 120,
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    child: SizedBox(
                      width: 95,
                      height: 95,
                      child: Image.network(
                        Food.foods[index].image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 140,
                          child: Text(
                            Food.foods[index].foodName,
                            maxLines: 1,
                            overflow: TextOverflow.fade,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 140,
                          child: Text(
                            Food.foods[index].placeName,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Text(
                          '${Food.foods[index].newPrice} Br',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Obx(
                    () => Center(
                      child: !cartController.foods.keys
                              .toList()
                              .contains(Food.foods[index])
                          ? ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  onPrimary: Colors.deepOrange,
                                  primary: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  side: const BorderSide(
                                    width: 1,
                                    color: Colors.deepOrange,
                                  )),
                              onPressed: () {
                                cartController.addFood(Food.foods[index]);
                              },
                              icon: const Icon(Icons.add),
                              label: const Text(
                                'Add',
                                style: TextStyle(fontSize: 14),
                              ),
                            )
                          : Row(
                              children: [
                                GestureDetector(
                                  onTap: (() {
                                    cartController
                                        .removeFood(Food.foods[index]);
                                  }),
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    width: 25,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade100,
                                      border: Border.all(
                                        color: Colors.deepOrange,
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(8),
                                      ),
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.deepOrange,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  '${cartController.foods[Food.foods[index]]}',
                                  style: const TextStyle(fontSize: 16),
                                ),
                                GestureDetector(
                                  onTap: (() {
                                    cartController.addFood(Food.foods[index]);
                                  }),
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    width: 25,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: Colors.deepOrange,
                                      border: Border.all(
                                          color: Colors.deepOrange, width: 1),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(8),
                                      ),
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                    ),
                  ),
                ],
              ),
            ),
          )
        : Container();
  }
}
