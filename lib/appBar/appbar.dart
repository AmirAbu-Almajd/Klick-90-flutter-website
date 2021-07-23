import 'dart:js';

import 'package:first_web_flutter/appbar/actions.dart';
import 'package:flutter/material.dart';

AppBar appBar(BuildContext context, ScrollController scrollController) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return AppBar(
    bottom: PreferredSize(
        child: Container(
          color: Colors.white,
          height: height * 0.001,
        ),
        preferredSize: Size.fromHeight(4.0)),
    leadingWidth: width * 0.4,
    backgroundColor: Colors.black,
    leading: Image.asset(
      "assets/images/woodpecker.png",
      width: width * 0.4,
      height: height * 0.4,
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
          index: 1,
          externalContext: context),
      semiButton(
          text: "SERVICES",
          scrollController: scrollController,
          index: 3,
          externalContext: context),
      semiButton(
          text: "CLIENTS",
          scrollController: scrollController,
          index: 4,
          externalContext: context),
      semiButton(
          text: "PROJECTS",
          scrollController: scrollController,
          index: 5,
          externalContext: context),
      semiButton(
          text: "CONTACT",
          scrollController: scrollController,
          index: 6,
          externalContext: context),
    ],
  );
}
