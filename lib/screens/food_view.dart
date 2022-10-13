import 'package:beu_clone/list.dart';
import 'package:beu_clone/models/restaurant_model.dart';
import 'package:beu_clone/widgets/food_card.dart';
import 'package:flutter/material.dart';

class FoodView extends StatelessWidget {
  const FoodView({Key? key, required this.isCategory, required this.restaurant})
      : super(key: key);

  final bool isCategory;
  final Restaurant restaurant;

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
          child: FoodCard(
            index: index,
            restaurant: restaurant,
            isCategory: isCategory,
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Container();
      },
      itemCount: Restaurant.restaurants.length,
    );
  }
}
