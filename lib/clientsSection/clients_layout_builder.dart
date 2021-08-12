// ignore_for_file: file_names
import 'package:first_web_flutter/clientsSection/mobile_clients.dart';
import 'package:flutter/material.dart';

import 'clients.dart';

LayoutBuilder clientsLayoutBuilder(List<AssetImage> clientsImages){
  return LayoutBuilder(builder: (context,constraints){
    if(constraints.maxWidth>800){
      return clients(clientImages: clientsImages,);
    }
    return mobileClients(clientImages: clientsImages);
  },);
}