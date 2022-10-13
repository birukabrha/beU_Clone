import 'package:flutter/material.dart';

class FilterSlider extends StatelessWidget {
  const FilterSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 1),
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            height: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  width: 1,
                  color: Colors.grey.shade400,
                )),
            child: const Text('food'),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            height: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  width: 1,
                  color: Colors.grey.shade400,
                )),
            child: const Text('afafafafa'),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            height: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  width: 1,
                  color: Colors.grey.shade400,
                )),
            child: const Text('food'),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            height: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  width: 1,
                  color: Colors.grey.shade400,
                )),
            child: const Text('afafafafa'),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            height: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  width: 1,
                  color: Colors.grey.shade400,
                )),
            child: const Text('food'),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            height: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  width: 1,
                  color: Colors.grey.shade400,
                )),
            child: const Text('afafafafa'),
          ),
        ],
      ),
    );
  }
}
