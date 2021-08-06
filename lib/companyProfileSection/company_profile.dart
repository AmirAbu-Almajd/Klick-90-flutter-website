import 'dart:io';

import 'package:flowder/flowder.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:url_launcher/url_launcher.dart';
class companyProfile extends StatelessWidget {
  companyProfile({Key? key}) : super(key: key);
  //https://drive.google.com/uc?export=download&id=0B5PDC6Kr-oeYMlh5SWd6MUg2Tk0
  String _url = 'https://drive.google.com/uc?export=download&id=0B5PDC6Kr-oeYMlh5SWd6MUg2Tk0';
    _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    TextStyle defaultStyle = TextStyle(
        fontFamily: 'Renogare',
        color: Colors.black,
        fontSize: height * 0.03649006622516556291390728476821);
    TextStyle linkStyle = TextStyle(
        fontFamily: 'Renogare',
        color: Colors.black,
        decoration: TextDecoration.underline,
        fontSize: height * 0.03649006622516556291390728476821);
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.15,
      width: width,
      color: Colors.white,
      child: Center(
        child: RichText(
          text: TextSpan(
            style: defaultStyle,
            children: <TextSpan>[
              TextSpan(text: 'YOU CAN DOWNLOAD OUR COMPANY PROFILE '),
              TextSpan(
                  text: 'HERE',
                  style: linkStyle,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // print('here I aaaaaaaaaaaaaaaaam');
                      launch(_url);
                    }),
            ],
          ),
        ),
      ),
    );
  }
}
