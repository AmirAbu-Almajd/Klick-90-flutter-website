import 'package:flutter/material.dart';

import 'actions.dart';

Container mobileDrawer(BuildContext context, ScrollController scrollController,
    double height, double width) {
  return Container(
    width: width * 0.5,
    child: Drawer(
        child: Container(
      decoration: BoxDecoration(
          color: Colors.black,
          border: Border(
              top: BorderSide(
                color: Theme.of(context).colorScheme.primary,
                width: height * 0.002,
              ),
              bottom: BorderSide(
                color: Theme.of(context).colorScheme.primary,
                width: height * 0.002,
              ),
              right: BorderSide(
                color: Theme.of(context).colorScheme.primary,
                width: height * 0.002,
              ))),
      child: ListView(
        children: [
          ListTile(
            leading: semiButton(
                text: "HOME",
                scrollController: scrollController,
                index: 0,
                externalContext: context),
          ),
          ListTile(
            leading: semiButton(
                text: "KLICK WHO",
                scrollController: scrollController,
                index: 0,
                externalContext: context),
          ),
          ListTile(
            leading: semiButton(
                text: "SERVICES",
                scrollController: scrollController,
                index: 0,
                externalContext: context),
          ),
          ListTile(
            leading: semiButton(
                text: "CLIENTS",
                scrollController: scrollController,
                index: 2000,
                externalContext: context),
          ),
          ListTile(
            leading: semiButton(
                text: "PROJECTS",
                scrollController: scrollController,
                index: 0,
                externalContext: context),
          ),
          ListTile(
            leading: semiButton(
                text: "CONTACT US",
                scrollController: scrollController,
                index: 0,
                externalContext: context),
          )
        ],
      ),
    )),
  );
}
