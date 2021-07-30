// ignore_for_file: file_names

import 'package:flutter/material.dart';

Column myTexts(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

  TextStyle descriptionTheme = TextStyle(
              fontFamily: 'Renogare', fontSize: height*0.019, color: Colors.black);
  return Column(
    children: [
      SizedBox(
        height: height*0.02,
      ),
      Text(
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        style: descriptionTheme,
        textAlign: TextAlign.start,
      ),
      SizedBox(
        height: height*0.02,
      ),
      Text(
        "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        style: descriptionTheme,
        textAlign: TextAlign.start,
      ),
      SizedBox(
        height: height*0.02,
      ),
      Text(
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
        style: descriptionTheme,
        textAlign: TextAlign.start,
      ),
      SizedBox(
        height: height*0.02,
      ),
    ],
    crossAxisAlignment: CrossAxisAlignment.start,
  );
}
