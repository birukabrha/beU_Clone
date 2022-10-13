import 'package:beu_clone/screens/category_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final List<String> imgList = [
  'https://hips.hearstapps.com/hmg-prod/images/delish-roast-beef-horizontal-1540505165.jpg',
  'https://c.ndtvimg.com/2020-04/dih4ifhg_pasta_625x300_22_April_20.jpg?im=FaceCrop,algorithm=dnn,width=1200,height=886',
  'https://cdn.shopify.com/s/files/1/0205/9582/articles/20220211142347-margherita-9920_ba86be55-674e-4f35-8094-2067ab41a671.jpg?crop=center&height=800&v=1644590192&width=800',
  'https://media.istockphoto.com/photos/asian-cuisine-served-on-a-table-picture-id1223803728?k=20&m=1223803728&s=170667a&w=0&h=s8YJmnknZt8Tk0LwFq6Ep9gYtD2oOizoWMzWCrCsNDg=',
  'https://natashaskitchen.com/wp-content/uploads/2022/02/Buffalo-Wings-SQ.jpg',
  'https://cdn.britannica.com/69/176169-050-8F93B64D/Danish-pastries-yeast-agent-texture.jpg'
];

final List<Widget> imageSliders = imgList
    .map((item) => GestureDetector(
          onTap: () => Get.to(() => CategoryPage(categoryName: 'Slider')),
          child: Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      item,
                      fit: BoxFit.cover,
                      width: 1000,
                    ),
                  ],
                )),
          ),
        ))
    .toList();

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CarouselState();
  }
}

class _CarouselState extends State<Carousel> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      width: MediaQuery.of(context).size.width,
      child: Column(children: [
        SizedBox(
          height: 90,
          width: MediaQuery.of(context).size.width,
          child: CarouselSlider(
            items: imageSliders,
            carouselController: _controller,
            options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 8.0,
                height: 8.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.deepOrange)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ]),
    );
  }
}
