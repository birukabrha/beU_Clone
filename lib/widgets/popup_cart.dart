import 'package:beu_clone/controllers/cart_controller.dart';
import 'package:beu_clone/models/food_model.dart';
import 'package:beu_clone/widgets/floating_action_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopUpCart extends StatelessWidget {
  const PopUpCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isFasting = true;
    CartController cartController = Get.find();
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
            margin: EdgeInsets.only(
                top: cartController.foods.length == 1 ? 210 : 150, right: 11),
            padding: const EdgeInsets.only(bottom: 40),
            width: MediaQuery.of(context).size.width * .85,
            constraints: BoxConstraints(
              maxHeight: cartController.foods.length == 1 ? 120 : 200,
              minHeight: 120,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: const Radius.circular(25),
                topLeft: const Radius.circular(25),
                bottomLeft:
                    Radius.circular(cartController.foods.length == 1 ? 5 : 25),
                bottomRight:
                    Radius.circular(cartController.foods.length == 1 ? 5 : 25),
              ),
            ),
            child: Obx(
              () => ListView.builder(
                itemCount: cartController.foods.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 2),
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(4),
                            ),
                            child: SizedBox(
                              width: 40,
                              height: 40,
                              child: Image.network(
                                cartController.foods.keys.toList()[index].image,
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
                                  width: 115,
                                  child: Text(
                                    cartController.foods.keys
                                        .toList()[index]
                                        .foodName,
                                    maxLines: 1,
                                    overflow: TextOverflow.fade,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '${cartController.foods.keys.toList()[index].newPrice} Br',
                                      style: const TextStyle(
                                        fontSize: 13,
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Text(
                                      '${cartController.foods.keys.toList()[index].oldPrice} Br',
                                      style: const TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        fontSize: 11,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Obx(
                            () => Center(
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: (() {
                                      cartController.removeFood(cartController
                                          .foods.keys
                                          .toList()[index]);
                                      if (cartController.foods.isEmpty) {
                                        Get.back();
                                      }
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
                                    '${cartController.foods.values.toList()[index]}',
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                  GestureDetector(
                                    onTap: (() {
                                      cartController.addFood(cartController
                                          .foods.keys
                                          .toList()[index]);
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
                  );
                },
              ),
            )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: MyFloatingActionBtn(
        isCart: true,
      ),
    );
  }
}
