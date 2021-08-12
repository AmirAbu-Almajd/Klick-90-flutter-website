import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class mobileProjectImage extends StatefulWidget {
  final String projectImageName;

  const mobileProjectImage({required this.projectImageName, Key? key})
      : super(key: key);

  @override
  _mobileProjectImageState createState() => _mobileProjectImageState();
}

class _mobileProjectImageState extends State<mobileProjectImage>
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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: width * 0.005,
        vertical: width * 0.005,
      ),
      child: Center(
        child: AnimatedBuilder(
          animation: coloringAnimation,
          builder: (BuildContext context, _) {
            return MouseRegion(
              cursor: myCursor,
              onEnter: (_) {
                setState(() {
                  myCursor = SystemMouseCursors.click;
                });
              },
              onExit: (_) {
                setState(() {
                  myCursor = SystemMouseCursors.basic;
                });
              },
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (buildContext) {
                        return imageDialog(buildContext, widget.projectImageName);
                      });
                },
                onLongPress: () => _controller.forward(),
                onLongPressUp: () => _controller.reverse(),
                child: Container(
                  height: height * 0.25,
                  width: height * 0.25,
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
      ),
    );
  }
}

SimpleDialog imageDialog(BuildContext context, String imageName) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return SimpleDialog(
    backgroundColor: Colors.transparent,
    children: <Widget>[
      Container(
        height: width * 0.8,
        width: width * 0.8,
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
