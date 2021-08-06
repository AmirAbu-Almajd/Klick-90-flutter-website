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
          child: Row(
            children: [
              SizedBox(
                width: width * 0.025,
              ),
              Image.asset(
                "assets/images/woodpecker.png",
                height: height * 0.16,
                width: height * 0.065,
              ),
            ],
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
                  index: height *
                      (0.88055942074683377531448575854407 +
                          0.03947368421052631578947368421053),
                  externalContext: context),
              semiButton(
                  text: "SERVICES",
                  scrollController: scrollController,
                  index: height *
                      (0.03947368421052631578947368421053 +
                          1.8049437736752365969918802829712),
                  externalContext: context),
              semiButton(
                  text: "CLIENTS",
                  scrollController: scrollController,
                  index: height *
                      (0.03947368421052631578947368421053 +
                          3.6865066758295026411474480160415),
                  externalContext: context),
              semiButton(
                  text: "PROJECTS",
                  scrollController: scrollController,
                  index: (0.03947368421052631578947368421053 +
                          4.9227842657884471058595533710181) *
                      height,
                  externalContext: context),
              semiButton(
                  text: "CONTACT US",
                  scrollController: scrollController,
                  index: height *
                      (0.03947368421052631578947368421053 +
                          7.5812781369568700445177615064151),
                  externalContext: context),
              SizedBox(
                width: width * 0.025,
              )
            ],
          ),
        )
      ]),
    ),
  );
}
