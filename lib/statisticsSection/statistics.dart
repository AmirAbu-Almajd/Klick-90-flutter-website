import 'package:first_web_flutter/statisticsSection/statistics_item.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class statistics extends StatefulWidget {
 
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
  late List<String> statisticsIcons = ["megaphone.png", "megaphone.png", "megaphone.png", "megaphone.png"];
  late List<String> statisticsTitles = ["Social Campaigns", "Projects Finished", "Satisfied Clients", "Drunk Ideas"];
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
          height: height - (height * 0.12) - (height * 0.001),
          width: width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/statisticsBG.jpg"),
                  fit: BoxFit.cover)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              statisticItem(context, statisticsIcons[0], statisticsTitles[0],
                  countingAnimation),
              statisticItem(context, statisticsIcons[1], statisticsTitles[1],
                  countingAnimation2),
              statisticItem(context, statisticsIcons[2], statisticsTitles[2],
                  countingAnimation3),
              statisticItem(context,  statisticsIcons[3], statisticsTitles[3],
                  countingAnimation4),
            ],
          ),
        ),
      ],
    );
  }
}
