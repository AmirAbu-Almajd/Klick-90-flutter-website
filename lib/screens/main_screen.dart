import 'dart:async';

import 'package:first_web_flutter/aboutSection/about.dart';
import 'package:first_web_flutter/aboutSection/videoSection.dart';
import 'package:first_web_flutter/appBar/appbar.dart';
import 'package:first_web_flutter/carousel/carousel.dart';
import 'package:first_web_flutter/servicesSection/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  GlobalKey _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController = new ScrollController();
    return Scaffold(
      appBar: appBar(context, _scrollController),
      body: NotificationListener(
        onNotification: (t) {
          if (_scrollController.position.pixels >= 860) {
            setState(() {
              // aboutPage().
              final aboutPageState _state =  _key.currentState as aboutPageState;
              _state.startAnimating();
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
              servicePage(context)
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}

class magic extends ChangeNotifier {
  double show = 0;

  void showValChange(double val) {
    show = val;
    notifyListeners();
  }
}
