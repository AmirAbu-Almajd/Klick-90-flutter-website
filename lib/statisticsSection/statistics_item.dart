import 'package:first_web_flutter/statisticsSection/statistics.dart';
import 'package:flutter/material.dart';

class statisticItem extends StatefulWidget {
  String statisticIcon, statisticTitle;
  Animation animation;
  int finalValue;
  statisticItem(
      {
      required this.animation,
      required this.finalValue,
      required this.statisticIcon,
      required this.statisticTitle,
      Key? key})
      : super(key: key);

  @override
  _statisticItemState createState() => _statisticItemState();
}

class _statisticItemState extends State<statisticItem> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double sizedBoxHeight = 0.01973684210526315789473684210526 * height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            height: height * 0.12,
            width: (widget.statisticTitle == "Drunk Ideas")
                ? width * 0.05
                : width * 0.073,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      "assets/images/statistics icons/${widget.statisticIcon}"),
                  fit: BoxFit.fill),
            )),
        SizedBox(
          height: sizedBoxHeight,
        ),
        AnimatedBuilder(
          animation: widget.animation,
          builder: (BuildContext context, _) {
            return Text(
              (statistics.done)
                  ? (widget.statisticTitle == "Drunk Ideas")
                      ? "${widget.finalValue}+"
                      : widget.finalValue.toString()
                  : widget.animation.value.toString(),
              // (widget.statisticTitle == "Drunk Ideas" &&
              //         widget.animation.status == AnimationStatus.completed)
              //     ? "${widget.animation.value}+"
              //     : widget.animation.value.toString(),
              style: TextStyle(
                  fontSize: height * 0.03289473684210526315789473684211 * 1.5,
                  fontFamily: 'Renogare',
                  color: Colors.white),
            );
          },
        ),
        SizedBox(
          height: sizedBoxHeight,
        ),
        Text(
          widget.statisticTitle,
          style: TextStyle(
              fontSize: sizedBoxHeight * 1.1,
              fontFamily: 'Renogare',
              color: Colors.white),
        ),
      ],
    );
  }
}
// Column statisticItem(BuildContext context, String statisticIcon,
//     String statisticTitle, Animation animation, int finalValue) {

  
  
// }
