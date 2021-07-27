import 'package:first_web_flutter/projectsSection/project_image.dart';
import 'package:flutter/material.dart';

SimpleDialog imageDialog(BuildContext context, String imageName) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return SimpleDialog(
    backgroundColor:Colors.transparent,
    // contentPadding: EdgeInsets.all( height * 0.002),
    // shape: ContinuousRectangleBorder(
    //   side: BorderSide(
    //       color: Theme.of(context).colorScheme.primary, width: height * 0.002),
    // ),
    // title:
    //     const Text('Choose a language', style: TextStyle(color: Colors.white)),
    children: <Widget>[
      Container(
        height: height * 0.8,
        width: height * 0.8,
        decoration: BoxDecoration(
           border: Border.all(
              color: Theme.of(context).colorScheme.primary, width: height * 0.002),
            image: DecorationImage(
                image: AssetImage("assets/images/${imageName}"),fit: BoxFit.fill)),
      )
    ],
  );
}
