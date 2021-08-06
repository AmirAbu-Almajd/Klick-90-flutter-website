import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class project_image extends StatefulWidget {
  final String projectImageName;

  const project_image({required this.projectImageName, Key? key})
      : super(key: key);

  @override
  _project_imageState createState() => _project_imageState();
}

class _project_imageState extends State<project_image>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation coloringAnimation;
  MouseCursor myCursor = SystemMouseCursors.basic;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    coloringAnimation = ColorTween(begin: Colors.grey, end: Colors.transparent)
        .animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    // print(widget.zoomIndex);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width * 0.005),
      child: AnimatedBuilder(
        animation: coloringAnimation,
        builder: (BuildContext context, _) {
          return MouseRegion(
            cursor: myCursor,
            onEnter: (_) {
              setState(() {
                myCursor = SystemMouseCursors.click;
              });
              _controller.forward();
            },
            onExit: (_) {
              setState(() {
                myCursor = SystemMouseCursors.basic;
              });
              _controller.reverse();
            },
            child: GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (buildContext) {
                      return imageDialog(buildContext, widget.projectImageName);
                    });
              },
              child: Container(
                height: height * 0.3,
                width: height * 0.3,
                foregroundDecoration: BoxDecoration(
                  color: coloringAnimation.value,
                  backgroundBlendMode: BlendMode.saturation,
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/images/projects/${widget.projectImageName}",
                        ),
                        fit: BoxFit.fill)),
              ),
            ),
          );
        },
      ),
    );
  }
}

SimpleDialog imageDialog(BuildContext context, String imageName) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return SimpleDialog(
    backgroundColor: Colors.transparent,
    // contentPadding: EdgeInsets.all( height * 0.002),
    // shape: ContinuousRectangleBorder(
    //   side: BorderSide(
    //       color: Theme.of(context).colorScheme.primary, width: height * 0.002),
    // ),
    // title:
    //     const Text('Choose a language', style: TextStyle(color: Colors.white)),
    children: <Widget>[
      Container(
        height: height * 0.8,
        width: height * 0.8,
        decoration: BoxDecoration(
            border: Border.all(
                color: Theme.of(context).colorScheme.primary,
                width: height * 0.002),
            image: DecorationImage(
                image: AssetImage("assets/images/projects/${imageName}"),
                fit: BoxFit.fill)),
      )
    ],
  );
}
