import 'package:beu_clone/models/restaurant_model.dart';

class Food {
  final String image;
  final String foodName;
  final String placeName;
  final double oldPrice;
  final double newPrice;
  final Restaurant restaurant;

  const Food({
    required this.image,
    required this.foodName,
    required this.placeName,
    required this.oldPrice,
    required this.newPrice,
    required this.restaurant,
  });

  static List<Food> foods = [
    Food(
      image:
          'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F19%2F2016%2F02%2F03%2Fstrawberry-shortcake-shake-mr-2000.jpg',
      foodName: 'Special Smoothie',
      placeName: Restaurant.restaurants[0].name,
      oldPrice: 125.0,
      newPrice: 89.0,
      restaurant: Restaurant.restaurants[0],
    ),
    Food(
      image:
          'https://www.thereciperebel.com/wp-content/uploads/2020/06/how-to-make-a-milkshake-www.thereciperebel.com-600-36-of-44.jpg',
      foodName: 'MilkShake',
      placeName: Restaurant.restaurants[0].name,
      oldPrice: 120.0,
      newPrice: 99.0,
      restaurant: Restaurant.restaurants[0],
    ),
    Food(
      image:
          'https://ankacafe.com/wp-content/uploads/2019/04/special-burger.jpg',
      foodName: 'Special Burger',
      placeName: Restaurant.restaurants[1].name,
      oldPrice: 140.0,
      newPrice: 89.0,
      restaurant: Restaurant.restaurants[1],
    ),
    Food(
      image:
          'https://www.kitchensanctuary.com/wp-content/uploads/2021/05/Double-Cheeseburger-square-FS-42.jpg',
      foodName: 'Cheese Burger',
      placeName: Restaurant.restaurants[1].name,
      oldPrice: 125.0,
      newPrice: 79.0,
      restaurant: Restaurant.restaurants[1],
    ),
    Food(
      image:
          'https://www.crazymasalafood.com/wp-content/images/crazy-cupcake-shake.png',
      foodName: 'Special Shake',
      placeName: Restaurant.restaurants[2].name,
      oldPrice: 94.0,
      newPrice: 56.0,
      restaurant: Restaurant.restaurants[2],
    ),
    Food(
      image:
          'https://img.delicious.com.au/ozIwf1WF/del/2019/04/basic-beef-burger-104842-2.jpg',
      foodName: 'Beef Burger',
      placeName: Restaurant.restaurants[3].name,
      oldPrice: 110.0,
      newPrice: 69.0,
      restaurant: Restaurant.restaurants[3],
    ),
    Food(
      image:
          'https://ethiopianfoodguide.com/wp-content/uploads/Quanta-Firfir-1-1-1-1.jpg',
      foodName: 'Quanta Firfir',
      placeName: Restaurant.restaurants[4].name,
      oldPrice: 90.0,
      newPrice: 59.0,
      restaurant: Restaurant.restaurants[4],
    ),
    Food(
      image:
          'https://zenesdeliandworldmarket.com/wp-content/uploads/2021/01/120404782_1780828922070620_7705803711544740850_o.jpg',
      foodName: 'Kikil',
      placeName: Restaurant.restaurants[4].name,
      oldPrice: 210.0,
      newPrice: 190.0,
      restaurant: Restaurant.restaurants[4],
    ),
    Food(
      image:
          'https://img.atlasobscura.com/PJuTa4zUuPS_s41G0Hl93BXD8gKxQMKJ63Ry06kBDk0/rs:fill:580:580:1/g:ce/q:81/sm:1/scp:1/ar:1/aHR0cHM6Ly9hdGxh/cy1kZXYuczMuYW1h/em9uYXdzLmNvbS91/cGxvYWRzL3RoaW5n/X2ltYWdlcy9hODJk/ZDgzYi1mMzczLTQ5/ZjctOGIzYy1jNWRl/NmNkZjQ3ZTZmYmVi/ZmU1MGRmY2M3MDJh/NzJfS2l0Zm9fU2Vy/Z2lpIEtvdmFsIDog/QWxhbXkgU3RvY2sg/UGhvdG8uanBn.jpg',
      foodName: 'Kitfo',
      placeName: Restaurant.restaurants[4].name,
      oldPrice: 320.0,
      newPrice: 270.0,
      restaurant: Restaurant.restaurants[4],
    ),
    Food(
      image: 'https://pbs.twimg.com/media/Etmn8AOXYAApl2L.jpg',
      foodName: 'Dulet',
      placeName: Restaurant.restaurants[4].name,
      oldPrice: 200.0,
      newPrice: 160.0,
      restaurant: Restaurant.restaurants[4],
    ),
  ];
}
