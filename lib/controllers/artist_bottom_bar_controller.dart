import 'package:art/views/screens/artist/add_art.dart';
import 'package:art/views/screens/artist/artist_notification.dart';
import 'package:art/views/screens/artist/artist_profile.dart';
import 'package:art/views/widgets/artist_tab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArtistBottomBarController extends GetxController {
  int selectedTab = 0;

  Widget currentScreen = ArtistTab();

  void updaCurrentScreen(index) {
    switch (index) {
      case 0:
        currentScreen = ArtistTab();
        selectedTab = index;
        update();
        break;
      case 1:
        currentScreen = NewArt();
        selectedTab = index;
        update();
        break;
      case 2:
        currentScreen = ArtistNotificationScreen();
        selectedTab = index;
        update();
        break;

      case 3:
        currentScreen = ArtistProfile();
        selectedTab = index;
        update();
        break;
    }
  }

  // final _pageOptions = [
  //      ArtistTab(),

  //   NewArt(),
  //   ArtistNotificationScreen(),
  //   // ArtistOffer(),

  //   ArtistProfile(),
  // ];
}
