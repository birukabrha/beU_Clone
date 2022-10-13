import 'package:beu_clone/controllers/cart_controller.dart';
import 'package:beu_clone/screens/home_page.dart';
import 'package:beu_clone/screens/order_page.dart';
import 'package:beu_clone/screens/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatefulWidget {
  final cartController = Get.put(CartController());

  BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: [
          const HomePage(),
          OrdersPage(),
          const ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey.shade700,
        onTap: (value) => setState(() {
          currentIndex = value;
        }),
        items: const [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.home_filled,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.list_outlined,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.person_outline,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
