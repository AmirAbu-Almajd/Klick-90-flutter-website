import 'package:first_web_flutter/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Klick 90',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Colors.white,
        colorScheme: const ColorScheme(
          primary: Color.fromARGB(255, 237, 28, 36),
          primaryVariant: Colors.white,
          secondary: Colors.red,
          secondaryVariant: Colors.red,
          background: Colors.black,
          error: Colors.red,
          surface: Colors.black,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.black,
          onBackground: Colors.black,
          onError: Colors.white,
          brightness: Brightness.light,
        ),
        fontFamily: 'Renogare',
        textTheme: TextTheme(
          headline3: TextStyle(
              fontWeight: FontWeight.normal,
              fontFamily: 'Renogare',
              fontSize: 20,
              color: Colors.white),
          headline1: TextStyle(
              fontFamily: 'Renogare', fontSize: 20, color: Colors.white),
          headline2: TextStyle(
              fontFamily: 'Renogare',
              fontSize: 20,
              color: Color.fromARGB(255, 237, 28, 36)),
          bodyText1: TextStyle(
              fontFamily: 'Renogare', fontSize: 18, color: Colors.black),
        ),
      ),
      home: MainScreen(),
    );
  }
}
