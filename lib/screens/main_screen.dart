import 'package:first_web_flutter/aboutSection/about.dart';
import 'package:first_web_flutter/aboutSection/videoSection.dart';
import 'appbar.dart';
import 'package:first_web_flutter/carousel/carousel.dart';
import 'package:first_web_flutter/clientsSection/clients.dart';
import 'package:first_web_flutter/projectsSection/projects_section.dart';
import 'package:first_web_flutter/servicesSection/services.dart';
import 'package:first_web_flutter/statisticsSection/statistics.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter_web_scrollbar/flutter_web_scrollbar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  static final GlobalKey _key = GlobalKey();
  static final GlobalKey key2 = GlobalKey();
  bool first = false, second = false;
  ScrollController _scrollController = new ScrollController();
  double getScrollingPosition(double position) {
    double height = MediaQuery.of(context).size.height;
    return position / height;
  }

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: appBar(context, _scrollController),
      body: NotificationListener(
        onNotification: (t) {
          if (_scrollController.position.pixels >= height*1.17 && !first) {
            setState(() {
              final aboutPageState _state = _key.currentState as aboutPageState;
              _state.startAnimating();
              first = true;
            });
          } else if (_scrollController.position.pixels >= height*3.28 && !second) {
            setState(() {
              final statisticsState _state =
                  key2.currentState as statisticsState;
              _state.startCounting();
              second = true;
            });
          }
          // print("${_scrollController.position.pixels}");
          print("${MediaQuery.of(context).size.height}");
          return true;
        },
        child: Stack(children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                carousel(),
                videoSection(),
                aboutPage(
                  key: _key,
                ),
                servicePage(context),
                statistics(
                  key: key2,
                ),
                clients(),
                projects(),
              ],
            ),
          ),
          // FlutterWebScroller(
          //   scrollCallBack,
          //   dragHandleColor: Colors.red.withOpacity(0.5),

          // )
        ]),
      ),
      backgroundColor: Colors.black,
    );
  }
}
