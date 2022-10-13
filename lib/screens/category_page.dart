import 'package:beu_clone/controllers/search_controller.dart';
import 'package:beu_clone/models/restaurant_model.dart';
import 'package:beu_clone/screens/food_view.dart';
import 'package:beu_clone/screens/restaurant_view.dart';
import 'package:beu_clone/widgets/filter_slider.dart';
import 'package:beu_clone/widgets/floating_action_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryPage extends StatelessWidget {
  CategoryPage({Key? key, required this.categoryName}) : super(key: key);

  final String categoryName;

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SearchController searchController = Get.put(SearchController());
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            Obx(
              () => SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.chevron_left_outlined,
                        size: 40,
                        color: Colors.black,
                      ),
                      onPressed: (() {
                        Get.back();
                      }),
                    ),
                    searchController.isSearch.value
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width * .7,
                            child: TextField(
                              controller: controller,
                              cursorColor: Colors.deepOrange,
                              autofocus: true,
                              decoration: const InputDecoration.collapsed(
                                hintText: 'Search...',
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    height: 2),
                              ),
                              onSubmitted: (value) {},
                            ),
                          )
                        : Text(
                            categoryName,
                            style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                height: 2),
                          ),
                    !searchController.isSearch.value
                        ? IconButton(
                            onPressed: () {
                              searchController.toogleSearch();
                            },
                            icon: const Icon(Icons.search_outlined),
                            color: Colors.black,
                            iconSize: 30,
                          )
                        : IconButton(
                            onPressed: () {
                              searchController.toogleSearch();
                            },
                            icon: const Icon(Icons.clear_outlined),
                            color: Colors.black,
                            iconSize: 30,
                          ),
                  ],
                ),
              ),
            )
          ],
          bottom: const TabBar(
            labelColor: Colors.deepOrange,
            unselectedLabelColor: Colors.grey,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 2.0, color: Colors.deepOrange),
              insets: EdgeInsets.symmetric(horizontal: 40.0),
            ),
            tabs: [
              Tab(
                child: Text(
                  'Food',
                ),
              ),
              Tab(
                child: Text(
                  'Restaurants',
                ),
              ),
            ],
          ),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              TabBarView(children: [
                FoodView(
                  isCategory: true,
                  restaurant: Restaurant.restaurants[3],
                ),
                const RestaurantView(
                  isCategory: true,
                ),
              ]),
              Obx(
                () => Visibility(
                  visible: !searchController.isSearch.value,
                  child: const Positioned(
                    top: 5,
                    child: FilterSlider(),
                  ),
                ),
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: MyFloatingActionBtn(
          isCart: false,
        ),
      ),
    );
  }
}
