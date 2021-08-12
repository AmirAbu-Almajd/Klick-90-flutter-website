import 'package:flutter/material.dart';

class client extends StatefulWidget {
  final AssetImage clientImage;
  const client({required this.clientImage, Key? key}) : super(key: key);

  @override
  _clientState createState() => _clientState();
}

class _clientState extends State<client> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation coloringAnimation;

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
    double area = height * width;
    return Row(
      children: [
        SizedBox(
          width: height * 0.05,
        ),
        AnimatedBuilder(
          animation: coloringAnimation,
          builder: (BuildContext context, _) {
            return MouseRegion(
              onEnter: (_) {
                _controller.forward();
              },
              onExit: (_) {
                _controller.reverse();
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: height * 0.02,vertical: height * 0.02),
                height: width * 0.1,
                width: width * 0.1,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: widget.clientImage, fit: BoxFit.fill)),
                foregroundDecoration: BoxDecoration(
                  color: coloringAnimation.value,
                  backgroundBlendMode: BlendMode.saturation,
                ),
              ),
            );
          },
        ),
        SizedBox(
          width: height * 0.05,
        ),
      ],
    );
  }
}
