import 'package:flutter/material.dart';

class inputFieldMaker extends StatefulWidget {
  TextEditingController fieldController;
  String placeholderText;
  final notificationCallback notificationFunction;
  inputFieldMaker(
      {required this.notificationFunction,required this.placeholderText, required this.fieldController});

  @override
  _inputFieldMakerState createState() => _inputFieldMakerState();
}
  typedef notificationCallback = void Function();
class _inputFieldMakerState extends State<inputFieldMaker> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double textFieldsWidth = width * 0.55;
    return Container(
      margin: EdgeInsets.symmetric(vertical: height * 0.015),
      width: textFieldsWidth,
      child: TextField(
        onChanged: (val)=>widget.notificationFunction(),
        controller: widget.fieldController,
        maxLines: (widget.placeholderText == "Message") ? 5 : 1,
        style: TextStyle(
            color: Colors.white, fontFamily: 'Renogare', fontSize: 20),
        decoration: InputDecoration(
            hintText: widget.placeholderText,
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
}

// Container inputFieldMaker(BuildContext context,
//     TextEditingController fieldController, String placeholderText) {
//   double width = MediaQuery.of(context).size.width;
//   double height = MediaQuery.of(context).size.height;
//   double textFieldsWidth = width * 0.55;
  
// }
