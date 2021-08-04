import 'package:flutter/material.dart';

Column statisticItem(BuildContext context, String statisticIcon,
    String statisticTitle, Animation animation) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  double sizedBoxHeight = 0.01973684210526315789473684210526 * height;

  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
          height: height * 0.12,
          width: (statisticTitle == "Drunk Ideas")?width*0.05: width * 0.073,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/statistics icons/${statisticIcon}"),
                fit: BoxFit.fill),
          )),
      SizedBox(
        height: sizedBoxHeight,
      ),
      AnimatedBuilder(
        animation: animation,
        builder: (BuildContext context, _) {
          return new Text(
            (statisticTitle == "Drunk Ideas" &&
                    animation.status == AnimationStatus.completed)
                ? "${animation.value}+"
                : animation.value.toString(),
            style: TextStyle(
                fontSize: height * 0.03289473684210526315789473684211*1.5,
                fontFamily: 'Renogare',
                color: Colors.white),
          );
        },
      ),
      SizedBox(
        height: sizedBoxHeight,
      ),
      Text(
        statisticTitle,
        style: TextStyle(
            fontSize: sizedBoxHeight*1.1,
            fontFamily: 'Renogare',
            color: Colors.white),
      ),
    ],
  );
}
