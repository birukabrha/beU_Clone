import 'package:beu_clone/widgets/delivery_man_review.dart';
import 'package:beu_clone/widgets/item_review.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RateAndReview extends StatelessWidget {
  const RateAndReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
            'Rate & Review',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          bottom: const TabBar(
            labelColor: Colors.deepOrange,
            unselectedLabelColor: Colors.grey,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 2.0, color: Colors.deepOrange),
              // insets: EdgeInsets.symmetric(horizontal: 40.0),
            ),
            tabs: [
              Tab(
                child: Text(
                  'Item',
                ),
              ),
              Tab(
                child: Text(
                  'Delivery Man',
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [ItemReview(), DeliveryManReview()]),
      ),
    );
  }
}
