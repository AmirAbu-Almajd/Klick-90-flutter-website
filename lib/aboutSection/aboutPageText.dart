// ignore_for_file: file_names

import 'package:flutter/material.dart';

Column myTexts(BuildContext context) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  double area = width * height;
  TextStyle descriptionTheme = TextStyle(
      height: height * 0.0026,
      fontFamily: 'Renogare',
      fontSize: (width < 800) ? width * 0.05 : height * 0.0236,
      color: Colors.black);
  return Column(
    children: [
      SelectableText(
        "You can see it, feel it and hear it! ${"We're"} the woodpeckers of Digital marketing. Strong, resilient and the best of what evolution had to offer the world. We created our own path and stuck to it! We create buzz wherever we are. We’re younger than your average agency and we’re damn proud of It, it gives us the resolve and the composure to always be on top! With passion, resilience, and wit, we figured out how to get things done. We’ve had our share of tough days but that's all behind us, we know what it is to be average because we used to be just that, but not anymore. Our team is built on a multitude of different characters, beliefs, and needs, but we only care about one thing, Passion. It’s what drives us to be who we are with the expertise to make your brand the best out there. We’ll tell you this thou. Everything starts with a Klick so welcome the world of Klick90!",
        style: descriptionTheme,
        textAlign: TextAlign.justify,
      ),
    ],
    // crossAxisAlignment: CrossAxisAlignment.start,
  );
}
