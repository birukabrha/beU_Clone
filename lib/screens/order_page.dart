import 'package:beu_clone/controllers/cart_controller.dart';
import 'package:beu_clone/widgets/order_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrdersPage extends StatelessWidget {
  OrdersPage({Key? key}) : super(key: key);
  CartController cartController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'My Orders',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
        ),
      ),
      body: Obx(
        () => ListView.builder(
            itemCount: cartController.foods.length,
            itemBuilder: (context, index) {
              return OrderCard();
            }),
      ),
    );
  }
}
