// ignore_for_file: prefer_const_constructors

import 'package:first_web_flutter/clientsSection/client_row_maker.dart';
import 'package:flutter/material.dart';

class clients extends StatelessWidget {
  List<AssetImage> clientImages;
  clients({required this.clientImages});
  bool mobile = false;
  List<int> list = [0, 5, 10, 15, 20, 25];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
        color: Colors.white,
        width: width,
        child: Column(children: [
          SizedBox(
            height: height * 0.067,
          ),
          SelectableText("LATEST CLIENTS",
              style: TextStyle(
                  fontFamily: 'Renogare',
                  fontSize: 0.05 * height,
                  color: Colors.black)),
          SizedBox(
            height: height * 0.04,
          ),
          Column(
              children: list
                  .map((e) =>
                      clientRowMaker(clientImages.sublist(e, e + 5), mobile))
                  .toList()),
          SizedBox(
            height: height * 0.04,
          ),
        ]));
  }
}
