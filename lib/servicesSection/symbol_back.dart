import 'dart:math';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

Transform symbolBack(
    BuildContext context, String serviceName, String serviceDescription) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return Transform(
    transform: Matrix4.rotationY(pi),
    alignment: Alignment.center,
    child: Container(
      width: height * 0.35,
      height: height * 0.31,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          // border: Border.all((width: 2,color: Theme.of(context).colorScheme.primary)),
          border: Border.all(
              color: Theme.of(context).colorScheme.primary, width: 1.5)),
      child: Center(
        child: Column(
          children: [
            Text(
              serviceName,
              style: TextStyle(
                  fontSize: height*0.025, fontFamily: 'Renogare', color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: height*0.02,
            ),
            Text(
              serviceDescription,
              style: TextStyle(
                  fontSize: height*0.017, fontFamily: 'Renogare', color: Theme.of(context).colorScheme.secondary),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ),
  );
}
