// ignore_for_file: file_names
import 'package:first_web_flutter/projectsSection/projects_section.dart';
import 'package:flutter/material.dart';
import 'mobile_projects.dart';

LayoutBuilder projectsLayoutBuilder(List<String> projectsImages){
  return LayoutBuilder(builder: (context,constraints){
    if(constraints.maxWidth>800){
      return projects(projectsImages: projectsImages);
    }
    return mobileProjects(projectsImages: projectsImages);
  },);
}