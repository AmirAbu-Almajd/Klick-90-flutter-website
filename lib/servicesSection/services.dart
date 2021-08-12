import 'package:first_web_flutter/servicesSection/symbol.dart';
import 'package:flutter/material.dart';

Container servicePage(BuildContext context, List<String> servicesTitles,
    List<String> servicesDescriptions, List<String> serviceImage) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  bool mobile = false;
  return Container(
    // color: Colors.white,
    child: Container(
      width: width * 0.9,
      // height: height - (height * 0.12),
      height: height,
      // padding: EdgeInsets.symmetric(
      //     vertical: height * 0.15, horizontal: width * 0.2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: height * 0.067,
          ),
          SelectableText("OUR SERVICES",
              style: TextStyle(
                  fontFamily: 'Renogare',
                  fontSize: 0.05 * height,
                  color: Colors.white)),
          SizedBox(
            height: height * 0.04,
          ),
          Column(
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: servicesTitles
                      .sublist(0, 4)
                      .asMap()
                      .map((i, element) => MapEntry(
                            i,
                            symbol(
                              mobile: mobile,
                              serviceDescription: servicesDescriptions[i],
                              serviceTitle: element,
                              serviceImage: serviceImage[i],
                            ),
                          ))
                      .values
                      .toList()),
              SizedBox(
                height: height * 0.032,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: servicesTitles
                      .sublist(4, 8)
                      .asMap()
                      .map((i, element) => MapEntry(
                            i,
                            symbol(
                              mobile: mobile,
                              serviceDescription: servicesDescriptions[4 + i],
                              serviceTitle: element,
                              serviceImage: serviceImage[4 + i],
                            ),
                          ))
                      .values
                      .toList()),
            ],
          ),
        ],
      ),
    ),
  );
}
