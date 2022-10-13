import 'package:beu_clone/list.dart';
import 'package:beu_clone/models/restaurant_model.dart';
import 'package:beu_clone/widgets/restaurant_card.dart';
import 'package:flutter/material.dart';

class RestaurantView extends StatelessWidget {
  const RestaurantView({Key? key, required this.isCategory}) : super(key: key);

  final bool isCategory;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: isCategory
                ? (index == 0
                    ? const EdgeInsets.only(top: 45)
                    : const EdgeInsets.only())
                : const EdgeInsets.only(),
            child: RestaurantCard(
              index: index,
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            indent: 20,
          );
        },
        itemCount: Restaurant.restaurants.length);
  }
}
