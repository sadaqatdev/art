import 'package:art/views/widgets/list_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomerHomeController extends GetxController {
  TrendingData data = TrendingData();

  List<String> options = [
    "All",
    "Painting",
    "Textile",
    "Decoration",
  ];

  bool likeColor = false;

  Color iconColor = Colors.grey;

  RoundCardData round = RoundCardData();

  int selectedIndex;

  bool visible = false;

  double value = 0.0;

  void updateColor() {
    if (iconColor == Colors.grey) {
      iconColor = Colors.red;
      update();
    } else {
      iconColor = Colors.grey;
      update();
    }
  }

  void updateSelectedIndex(selected, i) {
    if (selected) {
      selectedIndex = i;
      visible = true;
      update();
    }
  }
}
