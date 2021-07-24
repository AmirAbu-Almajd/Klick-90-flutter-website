import 'dart:async';

import 'package:first_web_flutter/screens/main_screen.dart';
import 'package:first_web_flutter/aboutSection/aboutPageText.dart';
import 'package:flutter/material.dart';

class aboutPage extends StatefulWidget {
  aboutPage({required Key key}) : super(key: key);
  @override
  aboutPageState createState() => aboutPageState();
}

class aboutPageState extends State<aboutPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _textFadingAnimation;
  late Animation<Offset> myOffset;
  late double _opacity = 0;
  @override
  void startAnimating() {
    _controller.forward();
    Timer(Duration(milliseconds: 500), () {
      setState(() {
        _opacity = 1;
      });
    });
  }
@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));

    _textFadingAnimation = Tween<double>(begin: 0, end: 1).animate(_controller);
    myOffset = Tween<Offset>(begin: Offset(-1, 0), end: Offset.zero)
        .animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.white,
      child: Container(
        width: width * 0.9,
        height: height * 0.92,
        padding: EdgeInsets.symmetric(
            vertical: height * 0.15, horizontal: width * 0.2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SlideTransition(
              position: myOffset,
              child: Opacity(
                // opacity: 1,
                opacity: _textFadingAnimation.value,
                child: Text(
                  "WHO ARE THE KLICKERS?",
                  style: TextStyle(
                      fontFamily: 'Lemon Milk',
                      fontSize: 50,
                      color: Colors.red),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            Container(
                child: AnimatedOpacity(
              // opacity: 0,
              opacity: _opacity,
              duration: Duration(milliseconds: 2000),
              child: myTexts(context),
            ))
          ],
        ),
      ),
      width: width,
      height: height * 0.92,
    );
  }
}
