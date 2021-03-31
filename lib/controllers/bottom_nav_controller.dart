import 'package:art/views/screens/customer/customer_search.dart';
import 'package:art/views/screens/customer/home_customer.dart';
import 'package:art/views/screens/customer/notification.dart';
import 'package:art/views/screens/customer/profile.dart';
import 'package:art/views/widgets/customer_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BottomNavController extends GetxController {
  static BottomNavController get to => Get.find<BottomNavController>();

  int selectedTab = 0;

  Widget currentPage = CustomerHome();

  void bottomNavUpdate(index) {
    switch (index) {
      case 0:
        selectedTab = index;
        currentPage = CustomerHome();
        update();
        break;
      case 1:
        selectedTab = index;
        currentPage = CustomerTab();
        update();
        break;
      case 2:
        selectedTab = index;
        currentPage = CustomerSearch();
        update();
        break;
      case 3:
        selectedTab = index;
        currentPage = NotificationScreen();
        update();
        break;
      case 4:
        selectedTab = index;
        currentPage = Profile();
        update();
        break;
    }
  }
}
