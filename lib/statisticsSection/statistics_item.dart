import 'package:flutter/material.dart';

Column statisticItem(BuildContext context, String statisticIcon,
    String statisticTitle,Animation animation) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        "assets/images/${statisticIcon}",
        height: height * 0.1,
        width: width * 0.1,
      ),
      SizedBox(
        height: 15,
      ),
      AnimatedBuilder(
        animation: animation,
        builder: (BuildContext context, _) {
          return new Text(
            animation.value.toString(),
            style: TextStyle(
                fontSize: 25, fontFamily: 'Renogare', color: Colors.white),
          );
        },
      ),
      SizedBox(
        height: 15,
      ),
      Text(
        statisticTitle,
        style: TextStyle(
            fontSize: 18, fontFamily: 'Renogare', color: Colors.white),
      ),
    ],
  );
}
