import 'dart:html';

import 'package:first_web_flutter/clientsSection/client_image.dart';
import 'package:first_web_flutter/clientsSection/client_row_maker.dart';
import 'package:flutter/material.dart';

class clients extends StatefulWidget {
  const clients({Key? key}) : super(key: key);

  @override
  _clientsState createState() => _clientsState();
}

class _clientsState extends State<clients> {
  List<String> clientImages = [
    "0.png",
    "1.png",
    "2.png",
    "3.png",
    "4.png",
    "5.png",
    "6.png",
    "7.png",
    "8.png",
    "9.png",
    "10.png",
    "11.png",
    "12.png",
    "13.png",
    "14.png",
    "15.png",
    "16.png",
    "17.png",
    "18.png",
    "19.png",
    "20.png",
    "21.png",
    "22.png",
    "23.png",
    "24.png",
    "25.png",
    "26.png",
    "27.png",
    "28.png",
    "29.png",
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
        color: Colors.white,
        width: width,
        height: (height - (height * 0.12)) * 1.4,
        child: Column(children: [
          SizedBox(
            height: height * 0.067,
          ),
          Text("LATEST CLIENTS",
              style: TextStyle(
                  fontFamily: 'Renogare',
                  fontSize: 0.05 * height,
                  color: Colors.black)),
          SizedBox(
            height: height * 0.04,
          ),
          clientRowMaker(clientImages.sublist(0, 6)),
          SizedBox(
            height: height * 0.04,
          ),
          clientRowMaker(clientImages.sublist(6, 12)),
          SizedBox(
            height: height * 0.04,
          ),
          clientRowMaker(clientImages.sublist(12, 18)),
           SizedBox(
            height: height * 0.04,
          ),
          clientRowMaker(clientImages.sublist(18, 24)),
          SizedBox(
            height: height * 0.04,
          ),
          clientRowMaker(clientImages.sublist(24, 30)),
        ]));
  }
}
