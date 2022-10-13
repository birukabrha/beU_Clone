import 'package:beu_clone/list.dart';
import 'package:beu_clone/models/food_model.dart';
import 'package:beu_clone/models/restaurant_model.dart';
import 'package:beu_clone/screens/address_picker.dart';
import 'package:beu_clone/screens/category_page.dart';
import 'package:beu_clone/screens/notification_page.dart';
import 'package:beu_clone/screens/restaurant_detail.dart';
import 'package:beu_clone/widgets/bottom_popup.dart';
import 'package:beu_clone/widgets/carousel_slider.dart';
import 'package:beu_clone/widgets/restaurant_card.dart';
import 'package:beu_clone/widgets/special_offer_cards.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                SliverAppBar(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  pinned: true,
                  floating: true,
                  snap: true,
                  centerTitle: true,
                  title: SizedBox(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Get.defaultDialog(
                          radius: 0,
                          titlePadding: const EdgeInsets.only(
                              top: 20, bottom: 20, left: 10, right: 10),
                          title: 'Where is your Delivery Address',
                          titleStyle: const TextStyle(
                            fontSize: 20,
                          ),
                          contentPadding: const EdgeInsets.only(
                              top: 10, right: 20, left: 20),
                          content: SizedBox(
                            child: Column(
                              children: [
                                GestureDetector(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.my_location_outlined,
                                        size: 28,
                                        color: Colors.deepOrange.shade500,
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      const Text(
                                        'Use Current Location',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                GestureDetector(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.home_filled,
                                        size: 28,
                                        color: Colors.deepOrange.shade500,
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Home',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            'Addis ababa, Ethiopia',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.grey.shade400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(30, 10, 30, 10),
                                  child: const Divider(),
                                ),
                                GestureDetector(
                                  onTap: () => Get.to(
                                    () => const AddressPicker(),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.add,
                                        size: 28,
                                        color: Colors.deepOrange.shade500,
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      const Text(
                                        'Add a new address',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.black,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Addis Ababa, Ethiopia',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black),
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      GestureDetector(
                        onTap: (() => Get.to(() => const NotificationPage())),
                        child: Stack(
                          children: [
                            const Icon(
                              Icons.notifications,
                              color: Colors.black,
                            ),
                            Positioned(
                              right: 0,
                              child: Container(
                                width: 12,
                                height: 12,
                                decoration: BoxDecoration(
                                  color: Colors.deepOrange,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
                  bottom: AppBar(
                    elevation: 0,
                    backgroundColor: Colors.grey.shade200,
                    title: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 30,
                      color: Colors.grey.shade200,
                      child: Row(
                        children: const [
                          Icon(
                            Icons.search_outlined,
                            size: 30,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Search your taste',
                            style: TextStyle(fontSize: 11, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
          body: SizedBox(
            child: ListView(
              children: [
                const Carousel(),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  height: 110,
                  child: ListView.builder(
                      itemCount: categories.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return GestureDetector(
                          onTap: (() => Get.to(
                                () => CategoryPage(
                                  categoryName: categories[index]['name'],
                                ),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50.0)),
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: Image.network(
                                      categories[index]['image'],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  categories[index]['name'],
                                  style: const TextStyle(
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      })),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Special Offers',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 160,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade50,
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: ListView.builder(
                    itemCount: Food.foods.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return GestureDetector(
                        onTap: (() {
                          Get.bottomSheet(
                            BottomPopUp(
                              index: index,
                            ),
                          );
                        }),
                        child: SpecialOfferCards(
                          index: index,
                        ),
                      );
                    }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 15, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'All Restaurants Nearby',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Filter',
                        style:
                            TextStyle(fontSize: 14, color: Colors.deepOrange),
                      ),
                    ],
                  ),
                ),
                ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (() => Get.to(
                              () => RestaurantDetail(
                                index: index,
                              ),
                            )),
                        child: RestaurantCard(
                          index: index,
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider();
                    },
                    itemCount: Restaurant.restaurants.length),
              ],
            ),
          )),
    );
  }
}
