// ignore_for_file: prefer_const_constructors

import 'package:first_web_flutter/appBar/customAppbar.dart';
import 'package:first_web_flutter/appBar/mobile_drawer.dart';
import 'package:first_web_flutter/clientsSection/clients_layout_builder.dart';
import 'package:first_web_flutter/companyProfileSection/company_profile.dart';
import 'package:first_web_flutter/contactSection/contact_us.dart';
import 'package:first_web_flutter/projectsSection/projects_layout_builder.dart';
import 'package:first_web_flutter/servicesSection/services_layout_builder.dart';
import 'package:first_web_flutter/statisticsSection/statistics_layout_builder.dart';
import '../aboutSection/about.dart';
import '../carousel/carousel.dart';
import '../clientsSection/clients.dart';
import '../projectsSection/projects_section.dart';
import '../servicesSection/services.dart';
import '../statisticsSection/statistics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  BuildContext externalContext;
  MainScreen({required this.externalContext});
  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  static final GlobalKey _key = GlobalKey();
  static final GlobalKey key2 = GlobalKey();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool first = false, second = false;
  List<String> projectsImages = [
    "1.jpg",
    "2.jpg",
    "3.jpg",
    "4.jpg",
    "5.jpg",
    "6.jpg",
    "7.jpg",
    "8.jpg",
    "9.jpg",
    "10.jpg",
    "11.jpg",
    "12.jpg",
    "13.jpg",
    "14.jpg",
    "15.jpg",
    "16.jpg",
    "17.jpg",
    "18.jpg",
    "19.jpg",
    "20.jpg",
    "21.jpg",
    "22.jpg",
    "23.jpg",
    "24.jpg",
    "25.jpg",
    "26.jpg",
    "27.jpg",
    "28.jpg",
    "29.jpg",
    "30.jpg",
  ];
  List<AssetImage> clientImages = [
    AssetImage("assets/images/Final updated list of clients/0.png"),
    AssetImage("assets/images/Final updated list of clients/1.png"),
    AssetImage("assets/images/Final updated list of clients/2.png"),
    AssetImage("assets/images/Final updated list of clients/3.png"),
    AssetImage("assets/images/Final updated list of clients/4.png"),
    AssetImage("assets/images/Final updated list of clients/5.png"),
    AssetImage("assets/images/Final updated list of clients/6.png"),
    AssetImage("assets/images/Final updated list of clients/7.png"),
    AssetImage("assets/images/Final updated list of clients/8.png"),
    AssetImage("assets/images/Final updated list of clients/9.png"),
    AssetImage("assets/images/Final updated list of clients/10.png"),
    AssetImage("assets/images/Final updated list of clients/11.png"),
    AssetImage("assets/images/Final updated list of clients/12.png"),
    AssetImage("assets/images/Final updated list of clients/13.png"),
    AssetImage("assets/images/Final updated list of clients/14.png"),
    AssetImage("assets/images/Final updated list of clients/15.png"),
    AssetImage("assets/images/Final updated list of clients/16.png"),
    AssetImage("assets/images/Final updated list of clients/17.png"),
    AssetImage("assets/images/Final updated list of clients/18.png"),
    AssetImage("assets/images/Final updated list of clients/19.png"),
    AssetImage("assets/images/Final updated list of clients/20.png"),
    AssetImage("assets/images/Final updated list of clients/21.png"),
    AssetImage("assets/images/Final updated list of clients/22.png"),
    AssetImage("assets/images/Final updated list of clients/23.png"),
    AssetImage("assets/images/Final updated list of clients/24.png"),
    AssetImage("assets/images/Final updated list of clients/25.png"),
    AssetImage("assets/images/Final updated list of clients/26.png"),
    AssetImage("assets/images/Final updated list of clients/27.png"),
    AssetImage("assets/images/Final updated list of clients/28.png"),
    AssetImage("assets/images/Final updated list of clients/29.png"),
  ];
  ScrollController _scrollController = ScrollController();
  void showDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }



  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print("Height:${height}\nWidth:${width}");
    return Scaffold(
      key: _scaffoldKey,
      // drawer: (width>800)?null:mobileDrawer(context,_scrollController,height,width),
      // drawer: LayoutBuilder(
      //   builder: (context, constraints) {
      //     if (constraints.maxWidth > 800) {
      //       null;
      //     }
      //     return mobileDrawer(context, _scrollController, height, width);
      //   },
      // ),
      drawer: mobileDrawer(context, _scrollController, height, width),
      appBar: appbar(context, _scrollController, height, width, showDrawer),
      body: NotificationListener(
        onNotification: (t) {
          double currentPosition = _scrollController.position.pixels;
          if (_scrollController.position.pixels >=
                  (height * 0.2826316652715080950340739137709) &&
              !first) {
            setState(() {
              final aboutPageState _state = _key.currentState as aboutPageState;
              _state.startAnimating();
              first = true;
            });
          } else if (_scrollController.position.pixels >=
                  (height * 2.5257911065957296156745024816591) &&
              !second) {
            setState(() {
              final statisticsState _state =
                  key2.currentState as statisticsState;
              _state.startCounting();
              second = true;
            });
          }
          // print(currentPosition);
          return true;
        },
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, _) {
            return Column(
              children: [
                carousel(),
                aboutPage(key: _key),
                servicesLayoutBuilder(),
                statisticsLayoutBuilder(key2),
                clientsLayoutBuilder(clientImages),
                projectsLayoutBuilder(
                  projectsImages,
                ),
                companyProfile(),
                ContactUs(externalContext: context),
              ],
            );
          },
          controller: _scrollController,
        ),
      ),

      backgroundColor: Colors.black,
    );
  }
}
