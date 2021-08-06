import 'package:first_web_flutter/appBar/customAppbar.dart';
import 'package:first_web_flutter/contactSection/contact_us.dart';
import 'package:first_web_flutter/custom_scrollbar.dart';

import '../aboutSection/about.dart';
import '../carousel/carousel.dart';
import '../clientsSection/clients.dart';
import '../projectsSection/projects_section.dart';
import '../servicesSection/services.dart';
import '../statisticsSection/statistics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  static List<AssetImage> caruouselImages = [
    AssetImage('assets/images/Slider/1.jpg'),
    AssetImage('assets/images/Slider/2.jpg'),
    AssetImage('assets/images/Slider/3.jpg')
  ];
  BuildContext externalContext;
  MainScreen({required this.externalContext});
  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  static final GlobalKey _key = GlobalKey();
  static final GlobalKey key2 = GlobalKey();
  bool first = false, second = false;
  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    super.initState();

    // for (int i = 0; i < MainScreen.caruouselImages.length; i++) {
    //   precacheImage(MainScreen.caruouselImages[i], context);
    // }
  }

  Widget build(BuildContext context) {
    print(
        "Height:${MediaQuery.of(context).size.height}\nWidth:${MediaQuery.of(context).size.width}");
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: appBar(context, _scrollController),
      appBar: customAppbar(context, _scrollController),
      body: NotificationListener(
        onNotification: (t) {
          double currentPosition = _scrollController.position.pixels;
          if (_scrollController.position.pixels >=
                  (height * 0.2826316652715080950340739137709) &&
              !first) {
            setState(() {
              final aboutPageState _state = _key.currentState as aboutPageState;
              _state.startAnimating();
              first = true;
            });
          } else if (_scrollController.position.pixels >=
                  (height * 3.1170257335331277502469834328745) - height &&
              !second) {
            setState(() {
              final statisticsState _state =
                  key2.currentState as statisticsState;
              _state.startCounting();
              second = true;
            });
          }
          // print(currentPosition);
          return true;
        },
        child: ListView.builder(
          itemCount: 1,
          // physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, _) {
            return Column
            (
              children: [
                carousel(),
                aboutPage(key: _key),
                servicePage(context),
                statistics(key: key2),
                clients(),
                projects(),
                ContactUs(externalContext: context),
              ],
            );
          },
          controller: _scrollController,
        ),
      ),

      backgroundColor: Colors.black,
    );
  }
}
