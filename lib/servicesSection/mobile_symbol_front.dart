import 'package:flutter/material.dart';

Container mobileSymbolFront(
    BuildContext context, String imageName, String serviceName) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return Container(
                width: width * 0.7,
            height: width * 0.7,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            width: width * 0.6,
            height: width * 0.6,
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
