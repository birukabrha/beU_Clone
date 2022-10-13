import 'package:beu_clone/models/restaurant_model.dart';
import 'package:beu_clone/screens/food_view.dart';
import 'package:beu_clone/widgets/filter_slider.dart';
import 'package:beu_clone/widgets/floating_action_button.dart';
import 'package:beu_clone/widgets/restaurant_info_tab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RestaurantDetail extends StatelessWidget {
  const RestaurantDetail({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: ((context, innerBoxIsScrolled) => [
              SliverAppBar(
                automaticallyImplyLeading: false,
                elevation: 0,
                expandedHeight: 220,
                backgroundColor: Colors.white,
                foregroundColor: Colors.white,
                pinned: true,
                floating: false,
                snap: false,
                centerTitle: false,
                leading: IconButton(
                  color: Colors.white,
                  onPressed: () {
                    Get.back();
                  },
                  icon: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.7),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Icons.chevron_left_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 15),
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          child: Image.network(
                            "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 183,
                        child: Container(
                            width: double.infinity,
                            color: Colors.transparent,
                            padding: const EdgeInsets.only(left: 20, bottom: 1),
                            constraints: BoxConstraints(
                              minWidth: MediaQuery.of(context).size.width,
                              maxWidth: MediaQuery.of(context).size.width,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 0),
                                  width: 50,
                                  height: 50,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    child: Image.network(
                                      Restaurant.restaurants[index].image,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: Container(
                                    color: Colors.transparent,
                                    height: 50,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          Restaurant.restaurants[index].name,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w800),
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.location_pin,
                                              size: 17,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              Restaurant
                                                  .restaurants[index].location,
                                              style: const TextStyle(
                                                  fontSize: 14.5,
                                                  color: Colors.white),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              SliverFixedExtentList(
                itemExtent: 60.0,
                delegate: SliverChildBuilderDelegate(
                    (context, index) => InfoTab(
                        rating: Restaurant.restaurants[index].rating,
                        workingHours:
                            Restaurant.restaurants[index].workingHours,
                        deliveryTime:
                            Restaurant.restaurants[index].deliveryTime),
                    childCount: 1),
              ),
              const SliverAppBar(
                toolbarHeight: 30,
                expandedHeight: 30,
                collapsedHeight: 30,
                elevation: 0,
                automaticallyImplyLeading: false,
                pinned: true,
                floating: false,
                backgroundColor: Colors.transparent,
                centerTitle: false,
                flexibleSpace: FilterSlider(),
              )
            ]),
        body: ListView(
          children: [
            FoodView(
              isCategory: false,
              restaurant: Restaurant.restaurants[index],
            ),
          ],
        ),
      ),
      floatingActionButton: MyFloatingActionBtn(
        isCart: false,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
