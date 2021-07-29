import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  ContactUsState createState() => ContactUsState();
}

class ContactUsState extends State<ContactUs> {
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
    TextEditingController nameController = new TextEditingController();
    TextEditingController emailController = new TextEditingController();
    TextEditingController messageController = new TextEditingController();
    TextEditingController mobileController = new TextEditingController();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double mailingIconsWidth = height * 0.05;
    double mailingIconsHeight = height * 0.05;

    double textFieldsWidth = width * 0.55;
    return Container(
      width: width * 0.9,
      height: height * 0.92,
      child: Column(
        children: [
          SizedBox(
            height: height * 0.067,
          ),
          Text("BE A KLICKER!",
              style: TextStyle(
                  fontFamily: 'Renogare',
                  fontSize: 40,
                  color: Theme.of(context).colorScheme.primary)),
          SizedBox(
            height: height * 0.04,
          ),
          Container(
            width: textFieldsWidth,
            child: TextField(
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Renogare', fontSize: 20),
              decoration: InputDecoration(
                  hintText: "Name",
                  hintStyle: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontFamily: 'Renogare',
                      fontSize: 20),
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
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Container(
            width: textFieldsWidth,
            child: TextField(
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Renogare', fontSize: 20),
              decoration: InputDecoration(
                  hintText: "E-Mail",
                  hintStyle: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontFamily: 'Renogare',
                      fontSize: 20),
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
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Container(
            width: textFieldsWidth,
            child: TextField(
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Renogare', fontSize: 20),
              decoration: InputDecoration(
                  hintText: "Mobile",
                  hintStyle: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontFamily: 'Renogare',
                      fontSize: 20),
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
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Container(
            width: width * 0.55,
            height: height * 0.22,
            child: TextField(
              maxLines: 5,
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Renogare', fontSize: 20),
              decoration: InputDecoration(
                  hintText: "Message",
                  hintStyle: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontFamily: 'Renogare',
                      fontSize: 20),
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
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            MouseRegion(
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
                onTap: () => _launchURL("https://www.facebook.com/Klick90"),
                child: Image.asset(
                  "assets/images/facebook.png",
                  width: mailingIconsWidth,
                  height: mailingIconsHeight,
                ),
              ),
            ),
            SizedBox(
              width: width * 0.01,
            ),
            MouseRegion(
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
                onTap: () => _launchURL("https://www.instagram.com/klick.90/"),
                child: Image.asset(
                  "assets/images/instagram.png",
                  width: mailingIconsWidth,
                  height: mailingIconsHeight,
                ),
              ),
            ),
            SizedBox(
              width: width * 0.01,
            ),
            MouseRegion(
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
              child: Image.asset(
                "assets/images/email.png",
                width: mailingIconsWidth,
                height: mailingIconsHeight,
              ),
            ),
          ])
        ],
      ),
    );
  }
}
