import 'dart:math';

import 'package:first_web_flutter/servicesSection/symbol_back.dart';
import 'package:first_web_flutter/servicesSection/symbol_front.dart';
import 'package:flutter/material.dart';

class symbol extends StatefulWidget {
  const symbol({Key? key}) : super(key: key);

  @override
  _symbolState createState() => _symbolState();
}

class _symbolState extends State<symbol> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _flippingAnimation;
  late AnimationStatus _status = AnimationStatus.dismissed;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _flippingAnimation = Tween<double>(begin: 0, end: 1).animate(_controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        _status = status;
      });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MouseRegion(
      onEnter: (_) {
        // (_status== AnimationStatus.dismissed)?_controller.forward():_controller.reverse();
        _controller.forward();
      },
      onExit: (_) {
        _controller.reverse();
      },
      child: Transform(
          alignment: FractionalOffset.center,
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.002)
            ..rotateY(pi * _flippingAnimation.value),
          child: (_flippingAnimation.value >= 0.5)
              ? symbolBack(context, "Symbol",
                  "Lorem Ipsu It was popularised in rsions of Lorem Ipsum.")
              : symbolFront(context,"symbol.png","Symbol")),
    );
  }
}
