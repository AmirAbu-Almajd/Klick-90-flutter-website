// ignore_for_file: prefer_const_constructors

import 'package:first_web_flutter/clientsSection/client_row_maker.dart';
import 'package:flutter/material.dart';



class clients  extends StatelessWidget{
  List<AssetImage> clientImages = [
    AssetImage("assets/images/Final updated list of clients/0.png"),
    AssetImage("assets/images/Final updated list of clients/1.png"),
    AssetImage("assets/images/Final updated list of clients/2.png"),
    AssetImage("assets/images/Final updated list of clients/3.png"),
    AssetImage("assets/images/Final updated list of clients/4.png"),
    AssetImage("assets/images/Final updated list of clients/5.png"),
    AssetImage("assets/images/Final updated list of clients/6.png"),
    AssetImage("assets/images/Final updated list of clients/7.png"),
    AssetImage("assets/images/Final updated list of clients/8.png"),
    AssetImage("assets/images/Final updated list of clients/9.png"),
    AssetImage("assets/images/Final updated list of clients/10.png"),
    AssetImage("assets/images/Final updated list of clients/11.png"),
    AssetImage("assets/images/Final updated list of clients/12.png"),
    AssetImage("assets/images/Final updated list of clients/13.png"),
    AssetImage("assets/images/Final updated list of clients/14.png"),
    AssetImage("assets/images/Final updated list of clients/15.png"),
    AssetImage("assets/images/Final updated list of clients/16.png"),
    AssetImage("assets/images/Final updated list of clients/17.png"),
    AssetImage("assets/images/Final updated list of clients/18.png"),
    AssetImage("assets/images/Final updated list of clients/19.png"),
    AssetImage("assets/images/Final updated list of clients/20.png"),
    AssetImage("assets/images/Final updated list of clients/21.png"),
    AssetImage("assets/images/Final updated list of clients/22.png"),
    AssetImage("assets/images/Final updated list of clients/23.png"),
    AssetImage("assets/images/Final updated list of clients/24.png"),
    AssetImage("assets/images/Final updated list of clients/25.png"),
    AssetImage("assets/images/Final updated list of clients/26.png"),
    AssetImage("assets/images/Final updated list of clients/27.png"),
    AssetImage("assets/images/Final updated list of clients/28.png"),
    AssetImage("assets/images/Final updated list of clients/29.png"),
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
