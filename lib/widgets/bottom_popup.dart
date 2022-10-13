import 'package:beu_clone/controllers/cart_controller.dart';
import 'package:beu_clone/models/food_model.dart';
import 'package:beu_clone/screens/checkout_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomPopUp extends StatelessWidget {
  const BottomPopUp({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    CartController cartController = Get.find();
    bool isFasting = true;
    return Obx(
      () => Container(
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
        width: MediaQuery.of(context).size.width,
        height: 270,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(7)),
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.network(
                          Food.foods[index].image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        child: Container(
                          width: 50,
                          height: 15,
                          color: Colors.green,
                          child: Center(
                            child: Text(
                              '${Food.foods[index].oldPrice - Food.foods[index].newPrice}Br OFF',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 8),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        Food.foods[index].foodName,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        Food.foods[index].placeName,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Container(
                        color: Colors.grey.shade100,
                        width: 100,
                        height: 15,
                      ),
                      Text(
                        '${Food.foods[index].newPrice} Br',
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '${Food.foods[index].oldPrice} Br',
                        style: const TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 75,
                  height: 20,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.orangeAccent, Colors.deepOrange]),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: !isFasting
                      ? const Center(
                          child: Text(
                            'Fasting',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 11),
                          ),
                        )
                      : const Center(
                          child: Text(
                            'Non Fasting',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 11),
                          ),
                        ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Quantity',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () =>
                          cartController.foods[Food.foods[index]] == null
                              ? null
                              : cartController.removeFood(Food.foods[index]),
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
                    Text(
                      cartController.foods[Food.foods[index]] == null
                          ? '0'
                          : '${cartController.foods[Food.foods[index]]}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    GestureDetector(
                      onTap: () => cartController.addFood(Food.foods[index]),
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          border:
                              Border.all(color: Colors.deepOrange, width: 1),
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
              ],
            ),
            RichText(
              text: TextSpan(
                text: 'Total amount: ',
                style: const TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: cartController.foods.isNotEmpty
                        ? '${cartController.allTotal} Br'
                        : '0.00 Br',
                    style: const TextStyle(
                      color: Colors.deepOrange,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * .9,
              height: 35,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.orangeAccent, Colors.deepOrange]),
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.transparent,
                  primary: Colors.transparent,
                  onPrimary: Colors.white,
                  maximumSize: Size(MediaQuery.of(context).size.width * .9, 35),
                  minimumSize: Size(MediaQuery.of(context).size.width * .9, 35),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () => cartController.foods.isNotEmpty
                    ? Get.to(() => const CheckoutPage())
                    : null,
                child: const Text(
                  'Order Now',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
