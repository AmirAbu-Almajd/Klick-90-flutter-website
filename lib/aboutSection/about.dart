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
        AnimationController(vsync: this, duration: Duration(milliseconds: 750));

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
        width: width,
        height: height - (height * 0.12),
        padding: EdgeInsets.symmetric(
          vertical: height * 0.15,horizontal: width*0.15
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SlideTransition(
              position: myOffset,
              child: AnimatedBuilder(
                animation: _textFadingAnimation,
                builder: (BuildContext context, _) {
                  return Opacity(
                    // opacity: 1,
                    opacity: _textFadingAnimation.value,
                    child: SelectableText(
                      "WHO ARE THE KLICKERS?",
                      style: TextStyle(
                          fontFamily: 'Renogare',
                          fontSize: height*0.06634819747854171974981416511339,
                          color: Colors.red),
                      textAlign: TextAlign.start,
                    ),
                  );
                },
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
