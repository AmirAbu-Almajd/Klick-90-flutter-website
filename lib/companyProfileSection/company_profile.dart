import 'dart:io';

import 'package:flowder/flowder.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:url_launcher/url_launcher.dart';

class companyProfile extends StatelessWidget {
  companyProfile({Key? key}) : super(key: key);
  //https://drive.google.com/uc?export=download&id=0B5PDC6Kr-oeYMlh5SWd6MUg2Tk0
  String _url =
      'https://drive.google.com/uc?export=download&id=1NQYyTMzLQyNai-T2oTemHMvwl-HsO2Vi';
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
    double fontSize = (width<800)?width*0.03:width * 0.019;
    double height = MediaQuery.of(context).size.height;
    TextStyle defaultStyle = TextStyle(
        fontFamily: 'Renogare', color: Colors.white, fontSize: fontSize);
    TextStyle linkStyle = TextStyle(
        fontFamily: 'Renogare',
        color: Colors.white,
        decoration: TextDecoration.underline,
        fontSize:fontSize);
    return Container(
      color: Theme.of(context).colorScheme.primary,
      height: height * 0.15,
      width: width,
      child: Center(
        child: RichText(
          text: TextSpan(
            style: defaultStyle,
            children: <TextSpan>[
              TextSpan(text: 'YOU CAN DOWNLOAD OUR COMPANY PROFILE FROM '),
              TextSpan(
                  text: 'HERE',
                  style: linkStyle,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch(_url);
                    }),
            ],
          ),
        ),
      ),
    );
  }
}
