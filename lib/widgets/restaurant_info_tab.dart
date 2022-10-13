import 'package:flutter/material.dart';

class InfoTab extends StatelessWidget {
  const InfoTab(
      {Key? key,
      required this.rating,
      required this.workingHours,
      required this.deliveryTime})
      : super(key: key);

  final double rating;
  final String workingHours;
  final int deliveryTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
      height: 10,
      width: 500,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const Text(
                'Rating',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star_border_outlined,
                    color: Colors.deepOrange,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    '$rating',
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            children: [
              const Text(
                'Working Hours',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.watch_later_outlined,
                    color: Colors.deepOrange,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    workingHours,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            children: [
              const Text(
                'Delivery Time',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                width: 3,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.delivery_dining_outlined,
                    color: Colors.deepOrange,
                  ),
                  Text(
                    '$deliveryTime min',
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
