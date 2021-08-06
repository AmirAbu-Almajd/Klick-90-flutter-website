import 'package:first_web_flutter/statisticsSection/statistics_item.dart';
import 'package:flutter/material.dart';

class statistics extends StatefulWidget {
  static bool done = false;
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
  late List<int> countingValues = [34, 54, 69, 1000];
  late List<String> statisticsIcons = [
    "campaign icon.png",
    "Projects finished final.png",
    "client icon.png",
    "drunk icon.png"
  ];
  late List<String> statisticsTitles = [
    "Social Campaigns",
    "Projects Finished",
    "Satisfied Clients",
    "Drunk Ideas"
  ];
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
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          statistics.done = true;
        });
        print(status);
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    // print("disposed + ${statistics.done.toString()}");
    super.dispose();
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
          height: height - (height * 0.12) + height * 0.001,
          width: width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.6), BlendMode.dstATop),
                  image: AssetImage("assets/images/statisticsBG.jpg"),
                  fit: BoxFit.cover)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              statisticItem(
                  // done: done,
                  statisticIcon: statisticsIcons[0],
                  statisticTitle: statisticsTitles[0],
                  animation: countingAnimation,
                  finalValue: countingValues[0]),
              statisticItem(
                  // done: done,
                  statisticIcon: statisticsIcons[1],
                  statisticTitle: statisticsTitles[1],
                  animation: countingAnimation2,
                  finalValue: countingValues[1]),
              statisticItem(
                  // done: done,
                  statisticIcon: statisticsIcons[2],
                  statisticTitle: statisticsTitles[2],
                  animation: countingAnimation3,
                  finalValue: countingValues[2]),
              statisticItem(
                  // done: done,
                  statisticIcon: statisticsIcons[3],
                  statisticTitle: statisticsTitles[3],
                  animation: countingAnimation4,
                  finalValue: countingValues[3]),
            ],
          ),
        ),
      ],
    );
  }
}
