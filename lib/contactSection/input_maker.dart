import 'package:flutter/material.dart';

Container inputFieldMaker(BuildContext context,
    TextEditingController fieldController, String placeholderText) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  double textFieldsWidth = width * 0.55;
  return Container(
    margin: EdgeInsets.symmetric(vertical: height * 0.015),
    width: textFieldsWidth,
    child: TextField(
      controller: fieldController,
      maxLines: (placeholderText == "Message") ? 5 : 1,
      style:
          TextStyle(color: Colors.white, fontFamily: 'Renogare', fontSize: 20),
      decoration: InputDecoration(
          hintText: placeholderText,
          hintStyle: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontFamily: 'Renogare',
              fontSize: 0.02631578947368421052631578947368 * height),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: height * 0.002,
          )),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: height * 0.002,
          ))),
    ),
  );
}
