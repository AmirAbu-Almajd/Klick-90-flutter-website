import 'dart:math';
import 'package:first_web_flutter/servicesSection/symbol_back.dart';
import 'package:first_web_flutter/servicesSection/symbol_front.dart';
import 'package:flutter/material.dart';

import 'mobile_symbol_back.dart';
import 'mobile_symbol_front.dart';

class symbol extends StatefulWidget {
  final String serviceTitle;
  final String serviceDescription;
  final String serviceImage;
  final bool mobile;
  const symbol(
      {required this.serviceTitle,
      required this.serviceDescription,
      required this.serviceImage,
      required this.mobile});

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
    return GestureDetector(
      onTap: () {
        if (widget.mobile) {
          print(_controller.status.toString());

          (_controller.status != AnimationStatus.dismissed)
              ? _controller.reverse()
              : _controller.forward();
        }
      },
      child: Container(
        margin: (widget.mobile)
            ? EdgeInsets.symmetric(vertical: height * 0.05)
            : null,
        child: MouseRegion(
          onEnter: (_) {
            // (_status== AnimationStatus.dismissed)?_controller.forward():_controller.reverse();
            if (!widget.mobile) {
              _controller.forward();
            }
          },
          onExit: (_) {
            if (!widget.mobile) {
              _controller.reverse();
            }
          },
          child: Transform(
              alignment: FractionalOffset.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.002)
                ..rotateY(pi * _flippingAnimation.value),
              child: (widget.mobile)
                  ? (_flippingAnimation.value >= 0.5)
                      ? mobileSymbolBack(context, widget.serviceTitle,
                          widget.serviceDescription)
                      : mobileSymbolFront(
                          context, widget.serviceImage, widget.serviceTitle)
                  : (_flippingAnimation.value >= 0.5)
                      ? symbolBack(context, widget.serviceTitle,
                          widget.serviceDescription)
                      : symbolFront(
                          context, widget.serviceImage, widget.serviceTitle)),
        ),
      ),
    );
  }
}
