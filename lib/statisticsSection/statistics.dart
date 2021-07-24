import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class statistics extends StatefulWidget {
  final String iconImage = "megaphone.png";
  final String iconTitle = "Statistic";
  const statistics({Key? key}) : super(key: key);

  @override
  statisticsState createState() => statisticsState();
}

class statisticsState extends State<statistics>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation countingAnimation;
  late Animation countingAnimation2;
  late Animation countingAnimation3;
  late Animation countingAnimation4;
  late List<int> countingValues = [232, 123, 545, 12];
  void startCounting() {
    _controller.forward();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2000));
    countingAnimation = IntTween(begin: 0, end: countingValues[0])
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    countingAnimation2 = IntTween(begin: 0, end: countingValues[1])
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    countingAnimation3 = IntTween(begin: 0, end: countingValues[2])
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    countingAnimation4 = IntTween(begin: 0, end: countingValues[3])
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          color: Theme.of(context).colorScheme.primary,
          height: height * 0.001,
          width: width,
        ),
        Container(
          height: height * 0.92 - (height * 0.001),
          width: width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/statisticsBG.jpg"),
                  fit: BoxFit.cover)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/${widget.iconImage}",
                    height: height * 0.1,
                    width: width * 0.1,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  AnimatedBuilder(
                    animation: countingAnimation,
                    builder: (BuildContext context, _) {
                      return new Text(
                        countingAnimation.value.toString(),
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Renogare',
                            color: Colors.white),
                      );
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    widget.iconTitle,
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Renogare',
                        color: Colors.white),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/${widget.iconImage}",
                    height: height * 0.1,
                    width: width * 0.1,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  AnimatedBuilder(
                    animation: countingAnimation2,
                    builder: (BuildContext context, _) {
                      return new Text(
                        countingAnimation2.value.toString(),
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Renogare',
                            color: Colors.white),
                      );
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    widget.iconTitle,
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Renogare',
                        color: Colors.white),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/${widget.iconImage}",
                    height: height * 0.1,
                    width: width * 0.1,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  AnimatedBuilder(
                    animation: countingAnimation3,
                    builder: (BuildContext context, _) {
                      return new Text(
                        countingAnimation3.value.toString(),
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Renogare',
                            color: Colors.white),
                      );
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    widget.iconTitle,
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Renogare',
                        color: Colors.white),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/${widget.iconImage}",
                    height: height * 0.1,
                    width: width * 0.1,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  AnimatedBuilder(
                    animation: countingAnimation4,
                    builder: (BuildContext context, _) {
                      return new Text(
                        countingAnimation4.value.toString(),
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Renogare',
                            color: Colors.white),
                      );
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    widget.iconTitle,
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Renogare',
                        color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
