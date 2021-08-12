import 'package:flutter/material.dart';

Container symbolFront(
    BuildContext context, String imageName, String serviceName) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            width: height * 0.43,
            height: height * 0.31,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Services/${imageName}"),
                    fit: BoxFit.scaleDown),
                borderRadius: BorderRadius.circular(15))),
        SelectableText(
          serviceName,
          style: TextStyle(
              fontSize: height * 0.025,
              fontFamily: 'Renogare',
              color: Colors.white),
        ),
      ],
    ),
  );
}
