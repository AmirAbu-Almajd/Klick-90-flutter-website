import 'package:first_web_flutter/aboutSection/about.dart';
import 'package:first_web_flutter/aboutSection/videoSection.dart';
import 'package:first_web_flutter/appBar/appbar.dart';
import 'package:first_web_flutter/carousel/carousel.dart';
import 'package:first_web_flutter/servicesSection/services.dart';
import 'package:first_web_flutter/statisticsSection/statistics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  static final GlobalKey _key = GlobalKey();
  static final GlobalKey key2 = GlobalKey();
  bool first = false, second = false;
  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController = new ScrollController();
    return Scaffold(
      appBar: appBar(context, _scrollController),
      body: NotificationListener(
        onNotification: (t) {
          if (_scrollController.position.pixels >= 860&& !first) {
            setState(() {
              final aboutPageState _state = _key.currentState as aboutPageState;
              _state.startAnimating();
              first = true;
            });
          } 
          else if (_scrollController.position.pixels >= 2472&& !second) {
            setState(() {
              print("wasalna w rabbena");
              final statisticsState _state= key2.currentState as statisticsState;
              _state.startCounting();
              second = true;
            });
          }
          print("${_scrollController.position.pixels}");
          return true;
        },
        child: SingleChildScrollView(
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
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}

