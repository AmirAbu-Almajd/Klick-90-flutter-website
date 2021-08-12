import 'package:first_web_flutter/projectsSection/image_row.dart';
import 'package:first_web_flutter/projectsSection/project_image.dart';
import 'package:flutter/material.dart';

class projects extends StatelessWidget {
  late List<String> projectsImages;
  projects({required this.projectsImages});
  bool mobile = false;
  List<int> list = [0, 5, 10, 15, 20, 25];
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
            children: list
                .map(
                  (e) => rowMaker(projectsImages.sublist(e, e + 5),mobile),
                )
                .toList(),
          ),
          SizedBox(
            height: height * 0.145,
          ),
        ],
      ),
    );
  }
}
