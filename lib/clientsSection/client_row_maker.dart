import 'package:first_web_flutter/clientsSection/client_image.dart';
import 'package:first_web_flutter/projectsSection/project_image.dart';
import 'package:flutter/material.dart';

Row clientRowMaker(List<String> projectsImages) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: projectsImages
        .asMap()
        .map((i, element) => MapEntry(
            i,
            client(
              clientImageName: element,
            )))
        .values
        .toList(),
  );
}