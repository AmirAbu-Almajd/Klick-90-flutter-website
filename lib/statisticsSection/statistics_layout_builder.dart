// ignore_for_file: file_names

import 'package:first_web_flutter/statisticsSection/statistics.dart';
import 'package:flutter/material.dart';
LayoutBuilder statisticsLayoutBuilder(GlobalKey _key) {
  List<String> statisticsIcons = [
    "campaign icon.png",
    "Projects finished final.png",
    "client icon.png",
    "drunk icon.png"
  ];
  List<String> statisticsTitles = [
    "Social Campaigns",
    "Projects Finished",
    "Satisfied Clients",
    "Drunk Ideas"
  ];
  List<int> countingValues = [34, 54, 69, 1000];
  return LayoutBuilder(
    builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return statistics(
          mobile: false,
          key: _key,
          countingValues: countingValues,
          statisticsIcons: statisticsIcons,
          statisticsTitles: statisticsTitles,
        );
      }
      return statistics(
        key: _key,
        mobile: true,
        countingValues: countingValues,
        statisticsIcons: statisticsIcons,
        statisticsTitles: statisticsTitles,
      );
      // return mobileStatistics(
      //   countingValues: countingValues,
      //   mobileStatisticsTitles: statisticsTitles,
      //   mobileStatisticsIcons: statisticsIcons,
      //   key: _key,
      // );
    },
  );
}
