import 'dart:js';

import 'package:first_web_flutter/appbar/actions.dart';
import 'package:flutter/material.dart';

AppBar appBar(BuildContext context, ScrollController scrollController) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return AppBar(
    bottom: PreferredSize(
        child: Container(
          color: Theme.of(context).colorScheme.primary,
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
          index: 689.85,
          externalContext: context),
      semiButton(
          text: "SERVICES",
          scrollController: scrollController,
          index: 2079.703366163534,
          externalContext: context),
      semiButton(
          text: "CLIENTS",
          scrollController: scrollController,
          index: 3468.9754213700126,
          externalContext: context),
      semiButton(
          text: "PROJECTS",
          scrollController: scrollController,
          index: 4159.5838671875,
          externalContext: context),
      semiButton(
          text: "CONTACT",
          scrollController: scrollController,
          index: 7,
          externalContext: context),
    ],
  );
}
