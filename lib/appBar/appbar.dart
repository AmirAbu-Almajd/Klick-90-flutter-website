import 'dart:js';

import '../appbar/actions.dart';
import 'package:flutter/material.dart';

AppBar appBar(BuildContext context, ScrollController scrollController) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return AppBar(
    bottom: PreferredSize(
        child: Container(
          color: Theme.of(context).colorScheme.primary,
          // color: Colors.deepOrangeAccent,
          height: height * 0.002,
        ),
        preferredSize: Size.fromHeight(4.0)),
    backgroundColor: Colors.black,
    leading: Image.asset(
      "assets/images/woodpecker.png",
    ),
    actions: [
      semiButton(
          text: "HOME",
          scrollController: scrollController,
          index: 0,
          externalContext: context),
      semiButton(
          text: "KLICK WHO",
          scrollController: scrollController,
          index: height*0.9161354582,
          externalContext: context),
      semiButton(
          text: "SERVICES",
          scrollController: scrollController,
          index: height*2.761890261,
          externalContext: context),
      semiButton(
          text: "CLIENTS",
          scrollController: scrollController,
          index: height*4.60687307,
          externalContext: context),
      semiButton(
          text: "PROJECTS",
          scrollController: scrollController,
          index: 5.52401576*height,
          externalContext: context),
      semiButton(
          text: "CONTACT",
          scrollController: scrollController,
          index: height*7.7408959739311201082175385045512,
          externalContext: context),
    ],
  );
}
