import 'dart:js';
import 'dart:ui';

import 'package:flutter/material.dart';

class semiButton extends StatefulWidget {
  String text;
  int index;
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
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));

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
    double adjustableMargin = width * 0.002;
    double adjustableContainerWidth = width * 0.1;
    return Center(
      child: Container(
        width: adjustableContainerWidth,
        height: height * 0.1,
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
                widget.scrollController.animateTo((height * widget.index) - 57,
                    duration: Duration(seconds: 1), curve: Curves.easeOut);
              },
              child: (widget.hovered)
                  ? AnimatedBuilder(
                      animation: _controller,
                      builder: (BuildContext context, _) {
                        return Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    _borderAnimation.value,
                                width: _widthAnimation.value),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding:
                              EdgeInsets.symmetric(vertical: 7, horizontal: 11),
                          child: Text(
                            widget.text,
                            style: Theme.of(context).textTheme.headline3,
                            textAlign: TextAlign.center,
                          ),
                        );
                      },
                    )
                  : Text(
                      widget.text,
                      style: Theme.of(context).textTheme.headline1,
                      textAlign: TextAlign.center,
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
