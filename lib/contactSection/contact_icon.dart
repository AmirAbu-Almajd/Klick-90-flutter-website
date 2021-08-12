import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class iconButton extends StatefulWidget {
  String url;
  String iconName;
  iconButton({required this.iconName, required this.url});

  @override
  _iconButtonState createState() => _iconButtonState();
}

class _iconButtonState extends State<iconButton>
    with SingleTickerProviderStateMixin {
  MouseCursor myCursor = SystemMouseCursors.basic;
  late AnimationController _controller;
  late Animation colorSwitch;
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 0));
    colorSwitch = ColorTween(begin: Colors.transparent, end: Colors.white)
        .animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double mailingIconsWidth = height * 0.075;
    double mailingIconsHeight = height * 0.075;
    Color iconColor = Colors.transparent;
    return AnimatedBuilder(
        animation: colorSwitch,
        builder: (context, _) {
          return MouseRegion(
              cursor: myCursor,
              onEnter: (_) {
                setState(() {
                  myCursor = SystemMouseCursors.click;
                  _controller.forward();
                });
              },
              onExit: (_) {
                setState(() {
                  myCursor = SystemMouseCursors.basic;
                  _controller.reverse();
                });
              },
              child: GestureDetector(
                  onTap: () => _launchURL("${widget.url}"),
                  child: Container(
                      width: mailingIconsWidth,
                      height: mailingIconsHeight,
                      foregroundDecoration: BoxDecoration(
                        color: colorSwitch.value,
                        backgroundBlendMode: BlendMode.colorDodge,
                      ),
                      decoration: BoxDecoration(
                        // color: colorSwitch.value,
                        // backgroundBlendMode: BlendMode.saturation,
                        image: DecorationImage(
                            image: AssetImage(
                          "assets/images/${widget.iconName}",
                        )
                            // Image.asset(
                            //   "assets/images/${widget.iconName}",
                            //   width: mailingIconsWidth,
                            //   height: mailingIconsHeight,
                            // ),
                            ),
                      ))));
        });
  }
}
