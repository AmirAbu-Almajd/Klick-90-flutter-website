import 'package:first_web_flutter/projectsSection/project_image.dart';
import 'package:flutter/material.dart';

class projects extends StatelessWidget {
  List<String> projectsImages = [
    "projectExample.jpg",
    "projectExample.jpg",
    "projectExample.jpg",
    "projectExample.jpg",
    "projectExample.jpg",
    "projectExample.jpg",
    "projectExample.jpg",
    "projectExample.jpg",
    "projectExample.jpg",
    "projectExample.jpg",
    "projectExample.jpg",
    "projectExample.jpg",
    "projectExample.jpg",
    "projectExample.jpg",
    "projectExample.jpg",
    "projectExample.jpg",
    "projectExample.jpg",
    "projectExample.jpg",
    "projectExample.jpg",
    "projectExample.jpg",
    "projectExample.jpg",
    "projectExample.jpg",
    "projectExample.jpg",
    "projectExample.jpg",
    "projectExample.jpg",
    "projectExample.jpg",
    "projectExample.jpg",
    "projectExample.jpg",
    "projectExample.jpg",
    "projectExample.jpg",
    "projectExample.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.black,
      width: width * 0.9,
      // height: height * 0.92,
      child: Stack(children: [
        Column(
          children: [
            SizedBox(
              height: height * 0.067,
            ),
            SelectableText("LATEST PROJECTS",
                style: TextStyle(
                    fontFamily: 'Renogare', fontSize: 40, color: Colors.white)),
            SizedBox(
              height: height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: projectsImages
                  .sublist(0, 5)
                  .asMap()
                  .map((i, element) => MapEntry(
                      i,
                      project_image(
                        projectImageName: element,
                        zoomIndex: i,
                      )))
                  .values
                  .toList(),
            ),
            SizedBox(
              height: width * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: projectsImages
                  .sublist(5, 10)
                  .asMap()
                  .map((i, element) => MapEntry(
                      i,
                      project_image(
                        projectImageName: element,
                        zoomIndex: i,
                      )))
                  .values
                  .toList(),
            ),
            SizedBox(
              height: width * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: projectsImages
                  .sublist(10, 15)
                  .asMap()
                  .map((i, element) => MapEntry(
                      i,
                      project_image(
                        projectImageName: element,
                        zoomIndex: i,
                      )))
                  .values
                  .toList(),
            ),
            SizedBox(
              height: width * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: projectsImages
                  .sublist(10, 15)
                  .asMap()
                  .map((i, element) => MapEntry(
                      i,
                      project_image(
                        projectImageName: element,
                        zoomIndex: i,
                      )))
                  .values
                  .toList(),
            ),
            SizedBox(
              height: width * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: projectsImages
                  .sublist(10, 15)
                  .asMap()
                  .map((i, element) => MapEntry(
                      i,
                      project_image(
                        projectImageName: element,
                        zoomIndex: i,
                      )))
                  .values
                  .toList(),
            ),
            SizedBox(
              height: width * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: projectsImages
                  .sublist(10, 15)
                  .asMap()
                  .map((i, element) => MapEntry(
                      i,
                      project_image(
                        projectImageName: element,
                        zoomIndex: i,
                      )))
                  .values
                  .toList(),
            ),
            SizedBox(
              height: height * 0.15,
            ),
          ],
        ),
      ]),
    );
  }
}
