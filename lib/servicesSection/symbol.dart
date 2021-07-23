import 'package:flutter/material.dart';

class symbol extends StatefulWidget {
  const symbol({Key? key}) : super(key: key);

  @override
  _symbolState createState() => _symbolState();
}

class _symbolState extends State<symbol> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              width: width * 0.2,
              height: height * 0.2,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/symbol.png"),
                      fit: BoxFit.scaleDown))),
          Text(
            "Symbol",
            style: TextStyle(
                fontSize: 18, fontFamily: 'Lemon Milk', color: Colors.red),
          ),
        ],
      ),
    );
  }
}
