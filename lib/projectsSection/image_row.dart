import 'package:first_web_flutter/projectsSection/project_image.dart';
import 'package:flutter/material.dart';

Row rowMaker(List<String> projectsImages) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: projectsImages
        .asMap()
        .map((i, element) => MapEntry(
            i,
            project_image(
              projectImageName: element,
            )))
        .values
        .toList(),
  );
}
