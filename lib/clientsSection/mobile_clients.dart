// ignore_for_file: prefer_const_constructors

import 'package:first_web_flutter/clientsSection/client_row_maker.dart';
import 'package:flutter/material.dart';

class mobileClients extends StatelessWidget {
  List<AssetImage> clientImages;
  mobileClients({required this.clientImages});
  bool mobile = true;
  List<int> list = [0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28];

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
                .map((e) => clientRowMaker(clientImages.sublist(e, e + 2),mobile))
                .toList(),
          ),
          SizedBox(
            height: height * 0.04,
          ),
        ]));
  }
}
