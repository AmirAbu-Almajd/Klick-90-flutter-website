import 'package:flutter/material.dart';

Column myTexts(BuildContext context) {
  return Column(
    children: [
      SizedBox(
        height: 15,
      ),
      Text(
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        style: Theme.of(context).textTheme.bodyText1,
        textAlign: TextAlign.start,
      ),
      SizedBox(
        height: 15,
      ),
      Text(
        "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        style: Theme.of(context).textTheme.bodyText1,
        textAlign: TextAlign.start,
      ),
      SizedBox(
        height: 15,
      ),
      Text(
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
        style: Theme.of(context).textTheme.bodyText1,
        textAlign: TextAlign.start,
      ),
      SizedBox(
        height: 15,
      ),
    ],
    crossAxisAlignment: CrossAxisAlignment.start,
  );
}
