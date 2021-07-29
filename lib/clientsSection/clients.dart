import 'dart:html';

import 'package:first_web_flutter/clientsSection/client_image.dart';
import 'package:flutter/material.dart';

class clients extends StatefulWidget {
  const clients({Key? key}) : super(key: key);

  @override
  _clientsState createState() => _clientsState();
}

class _clientsState extends State<clients> {
  List<String> clientImages = [
    "BUE.png",
    "symbol.png",
    "GUC.png",
    "Steakout.png",
    "woodpecker.png"
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
        color: Colors.white,
        width: width,
        height: height - (height * 0.12),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.067,
            ),
            Text("LATEST CLIENTS",
                style: TextStyle(
                    fontFamily: 'Renogare', fontSize: 40, color: Colors.black)),
            SizedBox(
              height: height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: clientImages.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return client(clientImageName: i);
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: height * 0.15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: clientImages.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return client(clientImageName: i);
                  },
                );
              }).toList(),
            ),
          ],
        ));
  }
}
