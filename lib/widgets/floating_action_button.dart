import 'package:beu_clone/controllers/cart_controller.dart';
import 'package:beu_clone/screens/checkout_page.dart';
import 'package:beu_clone/screens/order_page.dart';
import 'package:beu_clone/widgets/popup_cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MyFloatingActionBtn extends StatelessWidget {
  final CartController cartController = Get.find();
  MyFloatingActionBtn({Key? key, required this.isCart}) : super(key: key);

  final bool isCart;

  @override
  Widget build(BuildContext context) {
    List<Color> greyColors = [
      Colors.grey.shade600,
      Colors.white,
    ];

    List<Color> orangeColors = [
      Colors.deepOrange,
      Colors.orange,
    ];

    return Obx(() => GestureDetector(
          onTap: () => cartController.foods.isNotEmpty
              ? Get.bottomSheet(
                  PopUpCart(),
                )
              : null,
          child: Container(
            margin: const EdgeInsets.only(
              right: 10,
              bottom: 10,
            ),
            width: MediaQuery.of(context).size.width * .85,
            height: 75,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                !isCart
                    ? Container(
                        margin: const EdgeInsets.only(left: 40),
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: cartController.foods.isEmpty
                                ? greyColors
                                : orangeColors,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text(
                            '${cartController.totalFoodss()}',
                            style: const TextStyle(
                                fontSize: 17, color: Colors.white),
                          ),
                        ),
                      )
                    : Container(),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * .85,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: cartController.foods.isEmpty
                            ? greyColors
                            : orangeColors),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: cartController.foods.isEmpty
                            ? Colors.grey.withOpacity(0.5)
                            : Colors.deepOrange.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.delivery_dining,
                            size: 30,
                            color: cartController.foods.isEmpty
                                ? Colors.grey
                                : Colors.deepOrange,
                          ),
                        ),
                      ),
                      cartController.foods.isNotEmpty
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${cartController.allTotal} Br',
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                const Text(
                                  '+25.0 birr Delivery Fee',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            )
                          : const Text(
                              '0.00 Br',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                      SizedBox(
                        width: cartController.foods.isNotEmpty ? 10 : 50,
                      ),
                      GestureDetector(
                        onTap: () => cartController.foods.isNotEmpty
                            ? Get.to(() => const CheckoutPage())
                            : null,
                        child: Container(
                          margin: const EdgeInsets.only(right: 5),
                          width: 90,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: GradientText('Buy now',
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w800),
                                colors: cartController.foods.isEmpty
                                    ? [
                                        Colors.grey.shade400,
                                        Colors.grey.shade400,
                                      ]
                                    : orangeColors),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
