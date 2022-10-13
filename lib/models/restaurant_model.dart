class Restaurant {
  final String image;
  final String name;
  final double kilometer;
  final int deliveryTime;
  final double rating;
  final String workingHours;
  final String location;
  final double deliveryFee;
  final double avgPerPerson;

  const Restaurant(
      {required this.image,
      required this.name,
      required this.kilometer,
      required this.deliveryTime,
      required this.rating,
      required this.workingHours,
      required this.location,
      required this.deliveryFee,
      required this.avgPerPerson});

  static const List<Restaurant> restaurants = [
    Restaurant(
      image:
          'https://i.pinimg.com/originals/6f/9f/9c/6f9f9c0739334654a74e7e1509721263.jpg',
      name: 'Turkish Shake Smoothie',
      kilometer: 1.7,
      deliveryTime: 35,
      avgPerPerson: 182,
      deliveryFee: 45,
      rating: 3.6,
      workingHours: '08:00 - 21:00',
      location: 'Bole, Rwanda',
    ),
    Restaurant(
      image:
          'https://www.modernhoney.com/wp-content/uploads/2022/05/Double-Double-Cheeseburger-with-Fries-Recipe-scaled.jpg',
      name: 'Bravo Burger',
      kilometer: 1.8,
      deliveryTime: 35,
      avgPerPerson: 118,
      deliveryFee: 45,
      rating: 2.9,
      workingHours: '03:00 - 20:00',
      location: 'Bole, Atlas',
    ),
    Restaurant(
      image:
          'https://res.cloudinary.com/swiggy/image/upload/f_auto,q_auto,fl_lossy/a0rzj9coffh2pwnqcqn4',
      name: 'Chillax Juice Bar',
      kilometer: 0.9,
      deliveryTime: 35,
      avgPerPerson: 74,
      deliveryFee: 45,
      rating: 5.0,
      workingHours: '00:00 - 24:00',
      location: 'Gotera, Gotera Condominium',
    ),
    Restaurant(
      image:
          'https://images.unsplash.com/photo-1613277367862-f8ef14db7748?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YmlnJTIwYnVyZ2VyfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
      name: 'Empire Burger',
      kilometer: 1.9,
      deliveryTime: 35,
      avgPerPerson: 214,
      deliveryFee: 45,
      rating: 3.0,
      workingHours: '05:00 - 19:00',
      location: 'Piassa, Downtown',
    ),
    Restaurant(
      image:
          'https://img.onmanorama.com/content/dam/mm/en/food/features/images/2022/1/11/north-indian-cuisine.jpg',
      name: 'Ivory Restaurant',
      kilometer: 1.3,
      deliveryTime: 35,
      avgPerPerson: 191,
      deliveryFee: 45,
      rating: 4.6,
      workingHours: '03:00 - 15:00',
      location: 'Megenagna, Shola',
    ),
  ];
}
