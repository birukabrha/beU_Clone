import 'package:flutter/material.dart';

List categories = [
  {
    'name': 'Burger',
    'image':
        'https://images.immediate.co.uk/production/volatile/sites/30/2013/05/Cheeseburger-3d7c922.jpg'
  },
  {
    'name': 'Chicken',
    'image':
        'https://natashaskitchen.com/wp-content/uploads/2022/02/Buffalo-Wings-SQ.jpg'
  },
  {
    'name': 'Asian',
    'image':
        'https://media.istockphoto.com/photos/asian-cuisine-served-on-a-table-picture-id1223803728?k=20&m=1223803728&s=170667a&w=0&h=s8YJmnknZt8Tk0LwFq6Ep9gYtD2oOizoWMzWCrCsNDg='
  },
  {
    'name': 'Habeshan',
    'image':
        'https://uncorneredmarket.com/wp-content/uploads/2014/06/Ethiopia_food.jpg'
  },
  {
    'name': 'Pizza',
    'image':
        'https://cdn.shopify.com/s/files/1/0205/9582/articles/20220211142347-margherita-9920_ba86be55-674e-4f35-8094-2067ab41a671.jpg?crop=center&height=800&v=1644590192&width=800'
  },
  {
    'name': 'Salad',
    'image':
        'https://healthyfitnessmeals.com/wp-content/uploads/2021/04/Southwest-chicken-salad-7.jpg'
  },
  {
    'name': 'Sandwich',
    'image':
        'https://www.thespruceeats.com/thmb/tFys2FHeQDQhEBdybYjVbD2FmKE=/450x0/filters:no_upscale():max_bytes(150000):strip_icc()/grinder-sandwich-5271038-hero-04-3e9616d36781417eb429235769997f19.jpg'
  },
  {
    'name': 'Beef',
    'image':
        'https://hips.hearstapps.com/hmg-prod/images/delish-roast-beef-horizontal-1540505165.jpg'
  },
  {
    'name': 'Arabian',
    'image':
        'https://img77.uenicdn.com/image/upload/v1572418704/business/0a2a703b-2554-45c0-aaa3-384d95efb532/20180711-231237-883x800jpg.jpg'
  },
  {
    'name': 'Italian',
    'image':
        'https://c.ndtvimg.com/2020-04/dih4ifhg_pasta_625x300_22_April_20.jpg?im=FaceCrop,algorithm=dnn,width=1200,height=886'
  },
  {
    'name': 'Bakery',
    'image':
        'https://cdn.britannica.com/69/176169-050-8F93B64D/Danish-pastries-yeast-agent-texture.jpg'
  },
];

List profileItems = [
  {
    'text': 'Delivery Address',
    'icon': const Icon(Icons.location_on_outlined, color: Colors.black),
    'following': const Icon(
      Icons.chevron_right_outlined,
      color: Colors.grey,
    ),
  },
  {
    'text': 'Language',
    'icon': const Icon(Icons.language_outlined, color: Colors.black),
    'following': SizedBox(
      // height: 50,
      width: 80,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(
            'English',
            style: TextStyle(color: Colors.grey, fontSize: 13),
          ),
          Icon(Icons.chevron_right_outlined, color: Colors.grey),
        ],
      ),
    ),
  },
  {
    'text': 'Coupon',
    'icon': const Icon(Icons.wallet_giftcard_outlined, color: Colors.black),
    'following': const Icon(Icons.chevron_right_outlined, color: Colors.grey),
  },
  {
    'text': 'Help & Support',
    'icon': const Icon(Icons.help_center_outlined, color: Colors.black),
    'following': const Icon(Icons.chevron_right_outlined, color: Colors.grey),
  },
  {
    'text': 'Privacy Policy',
    'icon': const Icon(Icons.privacy_tip_outlined, color: Colors.black),
    'following': const Icon(Icons.chevron_right_outlined, color: Colors.grey),
  },
  {
    'text': 'Terms & Conditions',
    'icon': const Icon(Icons.feed_outlined, color: Colors.black),
    'following': const Icon(Icons.chevron_right_outlined, color: Colors.grey),
  },
  {
    'text': 'Logout',
    'icon': const Icon(Icons.logout_outlined, color: Colors.black),
    'following': Container(),
  },
];
