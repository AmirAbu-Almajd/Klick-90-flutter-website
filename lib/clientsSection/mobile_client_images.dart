import 'package:flutter/material.dart';

class mobileClientImage extends StatefulWidget {
  final AssetImage clientImage;
  const mobileClientImage({required this.clientImage, Key? key})
      : super(key: key);

  @override
  _mobileClientImageState createState() => _mobileClientImageState();
}

class _mobileClientImageState extends State<mobileClientImage>
    with SingleTickerProviderStateMixin {
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
    return Row(
      children: [
        SizedBox(
          width: height * 0.05,
        ),
        AnimatedBuilder(
          animation: coloringAnimation,
          builder: (BuildContext context, _) {
            return GestureDetector(
              onTap: () {
                (_controller.status == AnimationStatus.completed)
                    ? _controller.reverse()
                    : _controller.forward();
              },
              child: Container(
                height: height * 0.17,
                width: height * 0.17,
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
