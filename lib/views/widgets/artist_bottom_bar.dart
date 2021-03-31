import 'package:art/controllers/artist_bottom_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ArtistBottomBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ArtistBottomBarController>(
        init: ArtistBottomBarController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Colors.white,
            key: _scaffoldKey,
            body: controller.currentScreen,
            bottomNavigationBar: SizedBox(
              height: 60,
              child: BottomNavigationBar(
                backgroundColor: Colors.white,
                unselectedItemColor: Colors.grey,
                type: BottomNavigationBarType.fixed,
                currentIndex: controller.selectedTab,
                showSelectedLabels: true,
                selectedLabelStyle: TextStyle(
                  fontSize: 12,
                  color: Color(0xFFFF3D3A3A),
                ),
                selectedItemColor: Color(0xFFFF3D3A3A),
                elevation: 2,
                onTap: (int index) {
                  controller.updaCurrentScreen(index);
                },
                items: [
                  BottomNavigationBarItem(
                    label: 'Home',
                    icon: Icon(
                      Icons.home,
                      size: 30.0,
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: 'Add Art',
                    // onTap: () {},
                    icon: Icon(
                      Icons.add_circle,
                      size: 30.0,
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: 'Notification',
                    // onTap: () {},
                    icon: Icon(
                      Icons.notifications,
                      size: 30.0,
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: 'Profile',
                    // onTap: () {},
                    icon: Icon(
                      Icons.perm_identity,
                      size: 30.0,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
