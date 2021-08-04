import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class iconButton extends StatefulWidget {
  String url;
  String iconName;
  iconButton({required this.iconName, required this.url});

  @override
  _iconButtonState createState() => _iconButtonState();
}

class _iconButtonState extends State<iconButton> {
  MouseCursor myCursor = SystemMouseCursors.basic;

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double mailingIconsWidth = height * 0.05;
    double mailingIconsHeight = height * 0.05;
    return MouseRegion(
      cursor: myCursor,
      onHover: (_) {
        setState(() {
          myCursor = SystemMouseCursors.click;
        });
      },
      onExit: (_) {
        setState(() {
          myCursor = SystemMouseCursors.basic;
        });
      },
      child: GestureDetector(
        onTap: () => _launchURL("${widget.url}"),
        child: Image.asset(
          "assets/images/${widget.iconName}",
          width: mailingIconsWidth,
          height: mailingIconsHeight,
        ),
      ),
    );
  }
}
