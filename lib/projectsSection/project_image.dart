import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import 'image_dialog.dart';

class project_image extends StatefulWidget {
  final String projectImageName;
  final int zoomIndex;
  const project_image(
      {required this.projectImageName, required this.zoomIndex, Key? key})
      : super(key: key);

  @override
  _project_imageState createState() => _project_imageState();
}

class _project_imageState extends State<project_image>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation coloringAnimation;
  late AnimationController _controller2;
  late Animation _zoomingAnimation;
  late AnimationStatus _status = AnimationStatus.dismissed;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _controller2 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    coloringAnimation = ColorTween(begin: Colors.grey, end: Colors.transparent)
        .animate(_controller);
    _zoomingAnimation = Tween<double>(begin: 1, end: 2).animate(_controller2)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        _status = status;
      });
  }


  @override
  Widget build(BuildContext context) {
    // print(widget.zoomIndex);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return AnimatedBuilder(
      animation: coloringAnimation,
      builder: (BuildContext context, _) {
        return Transform.scale(
          alignment: FractionalOffset.center,
          scale: _zoomingAnimation.value,
          child: MouseRegion(
              onEnter: (_) {
                _controller.forward();
                // _controller2.forward();
              },
              onExit: (_) {
                // if(_controller2.status == AnimationStatus.completed){
                //   _controller2.reverse();
                // }
                _controller.reverse();
                // _controller2.reverse();
              },
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (buildContext) {
                        return imageDialog(buildContext, widget.projectImageName);
                      });
                  // (_controller2.status == AnimationStatus.completed)
                  //     ? _controller2.reverse()
                  //     : _controller2.forward();
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: width * 0.005),
                  height: height * 0.3,
                  width: height * 0.3,
                  foregroundDecoration: BoxDecoration(
                    color: coloringAnimation.value,
                    backgroundBlendMode: BlendMode.saturation,
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/${widget.projectImageName}",
                          ),
                          fit: BoxFit.fill)),

                      child: Image.asset(
                        "assets/images/${widget.projectImageName}",
                        height: height * 0.15,
                        width: height * 0.15,
                      ),
                ),
              )),
        );
      },
    );
  }
}
