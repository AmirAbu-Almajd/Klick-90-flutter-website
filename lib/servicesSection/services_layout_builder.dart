// ignore_for_file: file_names

import 'package:first_web_flutter/servicesSection/services.dart';
import 'package:flutter/material.dart';

import 'mobile_services.dart';
LayoutBuilder servicesLayoutBuilder(){
   List<String> servicesTitles = [
    "Branding",
    "Content Creation",
    "Design & Conceptualization",
    "Production",
    "Public Relations",
    "Media Buying",
    "Web & App development",
    "Community Management",
  ];
  List<String> servicesDescriptions = [
    "A full on tailored branding for your business or even idea, we make the tough calls and give you the best results for your business because let’s face it, we’ve been through it all, we created brands from scratch, gave various businesses their own identity and a feel like no other. We make you recognizable and recallable because then, you’d be Redheaded, definitely Hardheaded!",
    "We give you Content that matters, we are storytellers and we're damn good at it. Content isn't king. It's the kingdom! Telling a story, garnering engagement or just pure banter, this is what we do best. With a team of redheaded hardheaded content creators, your brand is going places!",
    "Creating stunning visuals is part of our daily routine. If you want to create a visual identity that would make your competitors look like they bought their logo online, If you want to look absolutely stunning on social media, if you want to create visual greatness then you've come to the right place.",
    "If it could be shot, then it will be shot! Giving you the latest in the world of production and the minds to capture it perfectly. Our production team is like no other when it comes to being elaborate, chic and absolutely amazing, whether it’s photography, videography, VFX or even SFX we have it all!",
    "Whether it’s an activation, your brand image or just a friendly gathering, our Public Relations Guru’s knows how to make you the center of the universe!",
    "In today's monetary world, we understand how hard it is to build an efficient Media Buying strategy, to identify your premium target audience and to analyze every bit of information to help you understand where to hit them where it counts. That's why our Media specialists will work day and night to make sure you have the best results possible for the long term.",
    "When it comes to perfecting your digital presence our web/app design team has it all, from the latest trends to the best practices all the way to creating your own little future amazon! Whatever it is we've got you!",
    "Creating a longstanding bond with your audience is every brand's dream!\nWe live, breathe and feed on your community and we know them by heart. We know what makes them tick and we know how to just call them out, creating the perfect exposure for your brand!",
  ];
  List<String> serviceImage = [
    "Branding.png",
    "Content Creation.png",
    "Design & Conceptualization.png",
    "Production.png",
    "Public Relations.png",
    "Media Buying.png",
    "Web & App Design.png",
    "Community management.png",
  ];
  return LayoutBuilder(builder: (context,constraints){
    if(constraints.maxWidth>800){
      return servicePage(context,servicesTitles,servicesDescriptions,serviceImage);
    }
    return mobileServicePage(context,servicesTitles,servicesDescriptions,serviceImage);
  },);
}