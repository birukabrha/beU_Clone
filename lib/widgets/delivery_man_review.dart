import 'package:flutter/material.dart';

class DeliveryManReview extends StatelessWidget {
  const DeliveryManReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          width: double.infinity,
          // height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 1,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Delivery Man',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
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
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Abebe Kebede',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.deepOrange.shade600,
                                size: 18,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.deepOrange.shade600,
                                size: 18,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.deepOrange.shade600,
                                size: 18,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.deepOrange.shade600,
                                size: 18,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.deepOrange.shade600,
                                size: 18,
                              ),
                              const Text(
                                '(6)',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.call_outlined,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          // width: double.infinity,
          // height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 1,
                spreadRadius: 1,
              ),
            ],
          ),
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              Center(
                child: Column(
                  children: [
                    const Text(
                      'Rate His Service',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.star_border_outlined,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.star_border_outlined,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.star_border_outlined,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.star_border_outlined,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.star_border_outlined,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Share your Opinion',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 20),
                      width: MediaQuery.of(context).size.width * .9,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10),
                          hintText: 'Write your review here...',
                          hintStyle: TextStyle(
                              color: Colors.grey.shade500, fontSize: 14),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      width: MediaQuery.of(context).size.width * .8,
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
                              Size(MediaQuery.of(context).size.width * .8, 36),
                          minimumSize:
                              Size(MediaQuery.of(context).size.width * .8, 36),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Submit',
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
      ],
    );
  }
}
