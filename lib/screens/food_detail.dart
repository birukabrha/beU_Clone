import 'package:beu_clone/controllers/cart_controller.dart';
import 'package:beu_clone/models/food_model.dart';
import 'package:beu_clone/widgets/floating_action_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FoodDetail extends StatelessWidget {
  const FoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CartController cartController = Get.find();
    var data = Get.arguments;
    var food = data[0];
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 210,
                      margin: const EdgeInsets.only(bottom: 15),
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        child: Image.network(
                          food.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      child: IconButton(
                        color: Colors.white,
                        onPressed: () {
                          Get.back();
                        },
                        icon: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.7),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Icon(
                            Icons.chevron_left_outlined,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      top: 170,
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: MediaQuery.of(context).size.width * .85,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 1,
                                    blurRadius: 1),
                              ]),
                          padding: const EdgeInsets.only(
                              left: 10, bottom: 1, right: 10),
                          constraints: BoxConstraints(
                            minWidth: MediaQuery.of(context).size.width * .85,
                            maxWidth: MediaQuery.of(context).size.width * .85,
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  food.foodName,
                                  style: const TextStyle(
                                    fontSize: 17,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  '${food.newPrice} Br',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.deepOrange.shade600,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 20,
                    right: 25,
                  ),
                  child: Text(
                    'Description alkbflasbfljbaslfbaslbflasbfjlasasfhasfbkasbfkasbfkasbfkasbfbflasbflasbfasbflasbfljasbfas',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 100,
            right: 20,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => cartController.removeFood(food),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
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
                Obx(
                  () => Text(
                    cartController.foods[food] == null
                        ? '0'
                        : '${cartController.foods[food]}',
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                GestureDetector(
                  onTap: () => cartController.addFood(food),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      border: Border.all(color: Colors.deepOrange, width: 1),
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
        ],
      ),
      floatingActionButton: MyFloatingActionBtn(
        isCart: false,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
