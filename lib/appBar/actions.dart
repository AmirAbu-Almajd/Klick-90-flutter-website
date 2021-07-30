import 'dart:js';
import 'dart:ui';

import 'package:flutter/material.dart';

class semiButton extends StatefulWidget {
  String text;
  double index;
  ScrollController scrollController;
  BuildContext externalContext;
  bool hovered = false;
  semiButton(
      {required this.text,
      required this.scrollController,
      required this.index,
      required this.externalContext});
  @override
  _SemiButtonState createState() => _SemiButtonState();
}

class _SemiButtonState extends State<semiButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _widthAnimation;
  late Animation _borderAnimation;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 0));

    _widthAnimation = Tween<double>(begin: 1, end: 2).animate(_controller);
    _borderAnimation = ColorTween(
            begin: Colors.black,
            end: Theme.of(widget.externalContext).colorScheme.primary)
        .animate(_controller);
    // _controller.addListener(() {
    //   print(_borderAnimation.value);
    // });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double adjustableMargin = width * 0.009;
    double adjustableContainerWidth = width * 0.075;
    TextStyle buttonsStyle = TextStyle(
        fontWeight: FontWeight.normal,
        fontFamily: 'Renogare',
        fontSize: 0.02 * height,
        color: Colors.white);
    return Center(
      child: MouseRegion(
        cursor: (widget.hovered)
            ? SystemMouseCursors.click
            : SystemMouseCursors.basic,
        onExit: (_) {
          setState(() {
            widget.hovered = false;
            _controller.reverse();
          });
        },
        onHover: (_) {
          setState(() {
            widget.hovered = true;
            _controller.forward();
          });
        },
        child: Center(
          child: GestureDetector(
              onTap: () {
                widget.scrollController.animateTo((widget.index),
                    duration: Duration(seconds: 1), curve: Curves.easeOut);
              },
              child: AnimatedBuilder(
                animation: _controller,
                builder: (BuildContext context, _) {
                  return Container(
                    width: adjustableContainerWidth,
                    // height: height * 0.1,
                    // margin: EdgeInsets.symmetric(horizontal: adjustableMargin),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: _borderAnimation.value,
                          width: _widthAnimation.value),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    padding: EdgeInsets.symmetric(vertical: height*0.009, horizontal: width*0.002),
                    child: Text(
                      widget.text,
                      style: buttonsStyle,
                      textAlign: TextAlign.center,
                    ),
                  );
                },
              )),
        ),
      ),
    );
  }
}
