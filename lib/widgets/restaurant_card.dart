import 'package:beu_clone/models/restaurant_model.dart';
import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
      height: 120,
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(7),
            ),
            child: SizedBox(
              width: 95,
              height: 95,
              child: Image.network(
                Restaurant.restaurants[index].image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Restaurant.restaurants[index].name,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.transparent,
                          border: Border.all(
                            color: Colors.deepOrange,
                            width: 1,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '${Restaurant.restaurants[index].kilometer} KM',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 25,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.transparent,
                          border: Border.all(
                            color: Colors.deepOrange,
                            width: 1,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '${Restaurant.restaurants[index].deliveryTime} min',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Avg ${Restaurant.restaurants[index].avgPerPerson} Br Per Person',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    'Delivery Fee ${Restaurant.restaurants[index].deliveryFee} Br',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            child: Row(
              children: [
                const Icon(
                  Icons.star_rate_rounded,
                  size: 17,
                  color: Colors.deepOrange,
                ),
                const SizedBox(
                  width: 0,
                ),
                Text(
                  '${Restaurant.restaurants[index].rating}',
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
