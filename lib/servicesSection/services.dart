import 'package:first_web_flutter/servicesSection/symbol.dart';
import 'package:flutter/material.dart';

Container servicePage(BuildContext context) {
  List<int> dummyList = [1, 2, 3];
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return Container(
    // color: Colors.white,
    child: Container(
      width: width * 0.9,
      height: height * 0.92,
      padding: EdgeInsets.symmetric(
          vertical: height * 0.15, horizontal: width * 0.2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("OUR SERVICES",
              style: TextStyle(
                  fontFamily: 'Lemon Milk', fontSize: 40, color: Colors.white)),
          SizedBox(
            height: height * 0.032,
          ),
          Column(
            children: [
              Row(
                children: dummyList.map((i) {
                  return Builder(builder: (BuildContext context) {
                    return symbol();
                  });
                }).toList(),
              ),
              SizedBox(
                height: height * 0.032,
              ),
              Row(
                children: dummyList.map((i) {
                  return Builder(builder: (BuildContext context) {
                    return symbol();
                  });
                }).toList(),
              ),
            ],
          ),
        ],
      ),
    ),
    width: width,
    height: height * 0.92,
  );
}
