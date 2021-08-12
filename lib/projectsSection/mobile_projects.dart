import 'package:flutter/material.dart';
import 'image_row.dart';

class mobileProjects extends StatelessWidget {
  List<String> projectsImages;
  mobileProjects({required this.projectsImages});
  bool mobile = true;
  List<int> list = [0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28];
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
                  (e) => rowMaker(projectsImages.sublist(e, e + 2),mobile),
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
