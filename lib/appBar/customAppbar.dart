// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'actions.dart';

PreferredSize appbar(BuildContext context, ScrollController scrollController,
    height, width, Function showDrawer) {
  return PreferredSize(
    preferredSize: Size.fromHeight(height * 0.12),
    child: LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return customAppbar(context, scrollController, height, width);
        }
        return mobileAppbar(context, height, width,showDrawer);
      },
    ),
  );
}

Container customAppbar(
    BuildContext context, ScrollController scrollController, height, width) {
  return Container(
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
              "assets/images/K90 logo.png",
              height: height * 0.26,
              width: height * 0.265,
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
                index: height * (0.92154467606716759460732995318208),
                externalContext: context),
            semiButton(
                text: "SERVICES",
                scrollController: scrollController,
                index: height * (1.8850554737362080039316490458964),
                externalContext: context),
            semiButton(
                text: "CLIENTS",
                scrollController: scrollController,
                index: height * (3.7653799388681348129283739135604),
                externalContext: context),
            semiButton(
                text: "PROJECTS",
                scrollController: scrollController,
                index: (5.4096094795411287441740823789976) * height,
                externalContext: context),
            semiButton(
                text: "CONTACT US",
                scrollController: scrollController,
                index: height * (7.837192122980456976449791536102),
                externalContext: context),
            SizedBox(
              width: width * 0.025,
            )
          ],
        ),
      )
    ]),
  );
}

Container mobileAppbar(BuildContext context, height, width, showDrawer) {
  return Container(
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
      IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        onPressed: () => showDrawer(),
      ),
      Image.asset(
        "assets/images/K90 logo.png",
        height: height * 0.27,
        width: height * 0.27,
      ),
      Opacity(
        opacity: 0,
        child: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
    ]),
    
  );
}
