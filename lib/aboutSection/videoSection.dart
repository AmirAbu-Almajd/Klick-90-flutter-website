import 'package:flutter/material.dart';

class videoSection extends StatefulWidget {
  const videoSection({Key? key}) : super(key: key);

  @override
  _videoSectionState createState() => _videoSectionState();
}

class _videoSectionState extends State<videoSection> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.92,
      width: width,
      child: Center(
        child: Text("VIDEO WILL BE DISPLAYED HERE",
            style: Theme.of(context).textTheme.headline1),
      ),
    );
  }
}
