import 'package:first_web_flutter/projectsSection/image_row.dart';
import 'package:first_web_flutter/projectsSection/project_image.dart';
import 'package:flutter/material.dart';

class projects extends StatelessWidget {
  List<String> projectsImages = [
    "1.jpg",
    "2.jpg",
    "3.jpg",
    "4.jpg",
    "5.jpg",
    "6.jpg",
    "7.jpg",
    "8.jpg",
    "9.jpg",
    "10.jpg",
    "11.jpg",
    "12.jpg",
    "13.jpg",
    "14.jpg",
    "15.jpg",
    "16.jpg",
    "17.jpg",
    "18.jpg",
    "19.jpg",
    "20.jpg",
    "21.jpg",
    "22.jpg",
    "23.jpg",
    "24.jpg",
    "25.jpg",
    "26.jpg",
    "27.jpg",
    "28.jpg",
    "29.jpg",
    "30.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.black,
      width: width * 0.9,
      // height: height * 0.92,
      child: Column(
        children: [
          SizedBox(
            height: height * 0.067,
          ),
          SelectableText("LATEST PROJECTS",
              style: TextStyle(
                  fontFamily: 'Renogare',
                  fontSize: 0.05 * height,
                  color: Colors.white)),
          SizedBox(
            height: height * 0.04,
          ),
          Column(
            children: [
              rowMaker(projectsImages.sublist(0, 5)),
              SizedBox(
                height: width * 0.01,
              ),
              rowMaker(projectsImages.sublist(5, 10)),
              SizedBox(
                height: width * 0.01,
              ),
              rowMaker(projectsImages.sublist(10, 15)),
              SizedBox(
                height: width * 0.01,
              ),
              rowMaker(projectsImages.sublist(15, 20)),
              SizedBox(
                height: width * 0.01,
              ),
              rowMaker(projectsImages.sublist(20, 25)),
              SizedBox(
                height: width * 0.01,
              ),
              rowMaker(projectsImages.sublist(25, 30)),
              SizedBox(
                height: height * 0.15,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
