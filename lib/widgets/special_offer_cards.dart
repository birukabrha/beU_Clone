import 'package:beu_clone/models/food_model.dart';
import 'package:flutter/material.dart';

class SpecialOfferCards extends StatelessWidget {
  const SpecialOfferCards({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      width: 150,
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(7), topLeft: Radius.circular(7)),
                child: Container(
                  width: 175,
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
                    padding: const EdgeInsets.only(
                      right: 2,
                      top: 3.5,
                    ),
                    width: 55,
                    height: 20,
                    color: Colors.green,
                    child: Text(
                      '${Food.foods[index].oldPrice - Food.foods[index].newPrice}Br OFF',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              Food.foods[index].foodName,
              style: const TextStyle(
                fontSize: 13,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              Food.foods[index].placeName,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${Food.foods[index].newPrice} Br',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  '${Food.foods[index].oldPrice} Br',
                  style: const TextStyle(
                      fontSize: 14,
                      decoration: TextDecoration.lineThrough,
                      color: Colors.grey),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 2,
          ),
        ],
      ),
    );
  }
}
