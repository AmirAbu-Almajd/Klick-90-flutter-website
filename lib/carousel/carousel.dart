import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class carousel extends StatefulWidget {
  const carousel({Key? key}) : super(key: key);

  @override
  _carouselState createState() => _carouselState();
}

class _carouselState extends State<carousel> {
  List<String> caruouselImages = ['1.jpg', '2.jpg', '3.jpg', '4.jpg'];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return CarouselSlider(
      options: CarouselOptions(
        height: height * 0.92,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 2),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      items: caruouselImages.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                    color: Colors.amber,
                    image: DecorationImage(
                        image: AssetImage("assets/images/${i}"),
                        fit: BoxFit.cover)));
          },
        );
      }).toList(),
    );
  }
}
