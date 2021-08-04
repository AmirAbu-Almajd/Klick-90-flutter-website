import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class carousel extends StatefulWidget {
  const carousel({Key? key}) : super(key: key);

  @override
  _carouselState createState() => _carouselState();
}

class _carouselState extends State<carousel> {
  List<AssetImage> caruouselImages = [
    AssetImage('assets/images/Slider/1.jpg'),
    AssetImage('assets/images/Slider/2.jpg'),
    AssetImage('assets/images/Slider/3.jpg')
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // for (int i = 0; i < caruouselImages.length; i++) {
    //   precacheImage(caruouselImages[i], context);
    // }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // return CarouselSlider(
    //   options: CarouselOptions(
    //     height: height * 0.92,
    //     aspectRatio: 16 / 9,
    //     viewportFraction: 1,
    //     initialPage: 0,
    //     enableInfiniteScroll: true,
    //     reverse: false,
    //     autoPlay: true,
    //     autoPlayInterval: Duration(seconds: 2),
    //     autoPlayAnimationDuration: Duration(milliseconds: 800),
    //     autoPlayCurve: Curves.fastOutSlowIn,
    //     enlargeCenterPage: true,
    //     scrollDirection: Axis.horizontal,
    //   ),
    //   items: caruouselImages.map((i) {
    //     return Builder(
    //       builder: (BuildContext context) {
    //         return Container(
    //             width: width,
    //             margin: EdgeInsets.symmetric(horizontal: 5.0),
    //             decoration: BoxDecoration(
    //                 color: Colors.black,
    //                 image: DecorationImage(image: i, fit: BoxFit.cover)));
    //       },
    //     );
    //   }).toList(),
    // );
    return Container(
      height: height - (height * 0.12),
      width: width,
      child: Center(
        child: Text("CAROUSEL WILL BE DISPLAYED HERE",
            style: Theme.of(context).textTheme.headline1),
      ),
    );
  }
}
