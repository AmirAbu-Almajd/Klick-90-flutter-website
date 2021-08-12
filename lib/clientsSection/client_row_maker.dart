import 'package:first_web_flutter/clientsSection/client_image.dart';
import 'package:first_web_flutter/clientsSection/mobile_client_images.dart';
import 'package:flutter/material.dart';

Row clientRowMaker(List<AssetImage> clientImages, bool mobile) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: (mobile)
        ? clientImages
            .map((e) => mobileClientImage(
                  clientImage: e,
                ))
            .toList()
        : clientImages
            .asMap()
            .map((i, element) => MapEntry(
                i,
                client(
                  clientImage: element,
                )))
            .values
            .toList(),
  );
}
