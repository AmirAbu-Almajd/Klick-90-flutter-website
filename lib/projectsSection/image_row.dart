import 'package:first_web_flutter/projectsSection/mobile_project_image.dart';
import 'package:first_web_flutter/projectsSection/project_image.dart';
import 'package:flutter/material.dart';

Row rowMaker(List<String> projectsImages, bool mobile) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: (mobile)
        ? projectsImages
            .map((e) => mobileProjectImage(projectImageName: e))
            .toList()
        : projectsImages
            .map((e) => project_image(
                  projectImageName: e,
                ))
            .toList(),
  );
}
