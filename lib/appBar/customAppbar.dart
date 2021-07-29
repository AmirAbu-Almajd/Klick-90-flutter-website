// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'actions.dart';

PreferredSize customAppbar(
    BuildContext context, ScrollController scrollController) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return PreferredSize(
    preferredSize: Size.fromHeight(height * 0.12),
    child: Container(
      height: height * 0.12,
      width: width,
      decoration: BoxDecoration(
          color: Colors.black,
          border: Border(
              bottom: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: height * 0.002,
          ))),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Image.asset(
            "assets/images/woodpecker.png",
          ),
        ),
        Align(
          child: Row(
            children: [
              semiButton(
                  text: "HOME",
                  scrollController: scrollController,
                  index: 0,
                  externalContext: context),
              semiButton(
                  text: "KLICK WHO",
                  scrollController: scrollController,
                  index: height * 0.87787195874901150198485751416824,
                  externalContext: context),
              semiButton(
                  text: "SERVICES",
                  scrollController: scrollController,
                  index: height * 2.6845697312725529523571023267062,
                  externalContext: context),
              semiButton(
                  text: "CLIENTS",
                  scrollController: scrollController,
                  index: height * 4.4810718715624857209640380135,
                  externalContext: context),
              semiButton(
                  text: "PROJECTS",
                  scrollController: scrollController,
                  index: 5.3690455263725273967678903233195 * height,
                  externalContext: context),
              semiButton(
                  text: "CONTACT",
                  scrollController: scrollController,
                  index: height * 7.5812781369568700445177615064151,
                  externalContext: context),
            ],
          ),
        )
      ]),
    ),
  );
}
