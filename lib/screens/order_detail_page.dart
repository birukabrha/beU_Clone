import 'package:beu_clone/screens/checkout_page.dart';
import 'package:beu_clone/screens/rate_and_review.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderDetailPage extends StatelessWidget {
  const OrderDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.chevron_left_outlined,
            size: 40,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Order Detail',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: ListView(
          children: [
            Row(
              children: const [
                Icon(
                  Icons.access_time_filled_rounded,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '29 Sep 2022 07:03 PM',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Delivery',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Container(
                  width: 120,
                  height: 23,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.orangeAccent, Colors.deepOrange]),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Cash on Delivery',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 11),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 6),
              child: const Divider(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: TextSpan(
                  text: 'Item: ',
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: '1',
                      style: TextStyle(
                        color: Colors.deepOrange.shade300,
                      ),
                    )
                  ],
                )),
                Row(
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'Delivered at 29 Sep 2022 07:03 PM',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 6),
              child: const Divider(),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              margin: const EdgeInsets.only(top: 3, bottom: 3),
              width: double.infinity,
              height: 75,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    child: SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.network(
                        'https://ankacafe.com/wp-content/uploads/2019/04/special-burger.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Club Sandwich',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '170.00 Br',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  RichText(
                      text: TextSpan(
                    text: 'Quantity:',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                    children: [
                      TextSpan(
                        text: '1',
                        style: TextStyle(
                          color: Colors.deepOrange.shade300,
                          fontSize: 12,
                        ),
                      )
                    ],
                  )),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 6),
              child: const Divider(),
            ),
            const Text(
              'Restaurant Details',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: Image.network(
                        'https://ankacafe.com/wp-content/uploads/2019/04/special-burger.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Super Burger',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Bole 22 adisu aspalt vip club fitlefit',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: CheckoutRow(
                title: 'Item Price',
                value: '170.00 Br',
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
            const CheckoutRow(
              title: 'Addons',
              value: '(+) 0.00 Br',
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 6),
              child: const Divider(),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: CheckoutRow(
                title: 'Subtotal',
                value: '170.00 Br',
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: CheckoutRow(
                title: 'Discount',
                value: '(-) 68.00 Br',
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: CheckoutRow(
                title: 'Coupon Discount',
                value: '(-) 31.35 Br',
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 4),
              child: CheckoutRow(
                title: 'Delivery Fee',
                value: '(+) 35.00 Br',
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 3),
              child: const Divider(),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: CheckoutRow(
                title: 'Total Amount',
                value: '105.25 Br',
                color: Colors.deepOrange.shade400,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .4,
                    height: 36,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.deepOrange,
                        width: 3,
                      ),
                      // gradient: LinearGradient(
                      //     colors: [Colors.orangeAccent, Colors.deepOrange]),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        primary: Colors.transparent,
                        onPrimary: Colors.white,
                        maximumSize:
                            Size(MediaQuery.of(context).size.width * .4, 36),
                        minimumSize:
                            Size(MediaQuery.of(context).size.width * .4, 36),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        Get.to(() => const RateAndReview());
                      },
                      child: Text(
                        'Review',
                        style: TextStyle(
                          color: Colors.deepOrange.shade600,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .4,
                    height: 35,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.orangeAccent, Colors.deepOrange]),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        primary: Colors.transparent,
                        onPrimary: Colors.white,
                        maximumSize:
                            Size(MediaQuery.of(context).size.width * .4, 36),
                        minimumSize:
                            Size(MediaQuery.of(context).size.width * .4, 36),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Order Again',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                        ),
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
