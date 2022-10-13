import 'package:beu_clone/controllers/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:expandable/expandable.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = ExpandableController().obs;
    final CartController cartController = Get.find();
    final promoText = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.chevron_left_outlined,
            color: Colors.black,
            size: 40,
          ),
        ),
        title: const Text(
          'Checkout',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: Obx(
        () => Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                child: ListView(
                  children: [
                    const Text(
                      'Products',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    cartController.foods.length == 1
                        ? ProductCard(
                            image: cartController.foods.keys.toList()[0].image,
                            name:
                                cartController.foods.keys.toList()[0].foodName,
                            price:
                                cartController.foods.keys.toList()[0].newPrice,
                            quantity: cartController.foods.values.toList()[0])
                        : Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                            child: ExpandablePanel(
                              controller: controller.value,
                              theme: const ExpandableThemeData(
                                tapBodyToCollapse: true,
                                tapBodyToExpand: true,
                                iconColor: Colors.deepOrange,
                              ),
                              header: SizedBox(
                                child: Row(
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          width: 70,
                                          height: 60,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Image.network(
                                            cartController.foods.keys
                                                .toList()[0]
                                                .image,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Container(
                                          width: 70,
                                          height: 60,
                                          decoration: BoxDecoration(
                                            color: Colors.black.withOpacity(.5),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '${cartController.foods.length}',
                                              style: const TextStyle(
                                                fontSize: 25,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          cartController.foods.length == 1
                                              ? '${cartController.foods.length} Item'
                                              : '${cartController.foods.length} Items',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: controller.value.expanded
                                                  ? Colors.deepOrange.shade300
                                                  : Colors.black,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          '${cartController.allTotal} Br',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: controller.value.expanded
                                                ? Colors.deepOrange.shade300
                                                : Colors.black,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              collapsed: Container(),
                              expanded: ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: cartController.foods.length,
                                itemBuilder: (context, index) {
                                  return ProductCard(
                                      image: cartController.foods.keys
                                          .toList()[index]
                                          .image,
                                      name: cartController.foods.keys
                                          .toList()[index]
                                          .foodName,
                                      price: cartController.foods.keys
                                          .toList()[index]
                                          .newPrice,
                                      quantity: cartController.foods.values
                                          .toList()[index]);
                                },
                              ),
                            ),
                          ),
                    const Text(
                      'Promo Code',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      width: MediaQuery.of(context).size.width * .9,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300,
                                blurRadius: 10,
                                spreadRadius: 2),
                          ]),
                      child: TextField(
                        controller: promoText,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          hintText: 'Enter Promo Code',
                          hintStyle: TextStyle(
                            color: Colors.grey.shade500,
                          ),
                          border: InputBorder.none,
                          suffixIcon: Container(
                            width: 120,
                            height: 50,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: promoText.text.isEmpty
                                      ? [
                                          Colors.grey.shade400,
                                          Colors.grey.shade400,
                                        ]
                                      : [
                                          Colors.orangeAccent,
                                          Colors.deepOrange.shade700
                                        ]),
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              ),
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shadowColor: Colors.transparent,
                                primary: Colors.transparent,
                                onPrimary: Colors.white,
                                maximumSize: const Size(120, 50),
                                minimumSize: const Size(120, 50),
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10)),
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Apply',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Deliver To',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      width: MediaQuery.of(context).size.width * .9,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          color: Colors.grey.shade400,
                          width: 1,
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.flag_outlined,
                            size: 32,
                            color: Colors.deepOrange,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Current Location',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Addis Ababa, Ethiopia',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 20),
                      width: MediaQuery.of(context).size.width * .9,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300,
                                blurRadius: 10,
                                spreadRadius: 2),
                          ]),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10),
                          hintText:
                              'Enter your address(including bldg No, floor...)',
                          hintStyle: TextStyle(color: Colors.grey.shade500),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 20),
                      width: MediaQuery.of(context).size.width * .9,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300,
                                blurRadius: 10,
                                spreadRadius: 2),
                          ]),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10),
                          hintText: 'Additional note',
                          hintStyle: TextStyle(
                              color: Colors.grey.shade500, fontSize: 16),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(color: Colors.grey.shade400, blurRadius: 5)
              ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CheckoutRow(
                    title: 'Subtotal',
                    value: '${cartController.allTotal} Br',
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                  const CheckoutRow(
                    title: 'Discount',
                    value: '(-) 25.00 Br',
                    fontSize: 15,
                    color: Colors.black87,
                    fontWeight: FontWeight.normal,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const CheckoutRow(
                    title: 'Delivery Fee',
                    value: '(+) 25.00 Br',
                    fontSize: 15,
                    color: Colors.black87,
                    fontWeight: FontWeight.normal,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Divider(
                    color: Colors.grey,
                    height: 1,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  CheckoutRow(
                    title: 'Total Amount',
                    value: '${cartController.allTotal} Br',
                    fontSize: 20,
                    color: Colors.deepOrange.shade400,
                    fontWeight: FontWeight.w700,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.orangeAccent,
                        Colors.deepOrange.shade700
                      ]),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        primary: Colors.transparent,
                        onPrimary: Colors.white,
                        maximumSize:
                            Size(MediaQuery.of(context).size.width, 40),
                        minimumSize:
                            Size(MediaQuery.of(context).size.width, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Confirm Order',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CheckoutRow extends StatelessWidget {
  const CheckoutRow({
    Key? key,
    required this.title,
    required this.value,
    required this.color,
    required this.fontSize,
    required this.fontWeight,
  }) : super(key: key);

  final String title;
  final String value;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
    required this.quantity,
  }) : super(key: key);

  final String name;
  final String image;
  final double price;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 60,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                '$quantity x $price',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          )
        ],
      ),
    );
  }
}
