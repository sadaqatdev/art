import 'package:art/controllers/bottom_nav_controller.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';

class CustomerBottomBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavController>(
        init: BottomNavController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Colors.white,
            key: _scaffoldKey,
            body: controller.currentPage,
            bottomNavigationBar: BottomNavigationBar(
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
                controller.bottomNavUpdate(index);
              },
              items: [
                BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(
                    Icons.home,
                    // size: 22.0,
                    // color: Colors.grey,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Orders',
                  icon: Icon(
                    EvaIcons.shoppingBag,
                    // size: 22.0,
                    // color: Colors.grey,
                  ),
                  //title: Text('Chat'),
                ),
                BottomNavigationBarItem(
                  label: 'Search',
                  // onTap: () {},
                  icon: Icon(
                    Icons.search,
                    // size: 22.0,
                    // color: Colors.grey,/
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Notification',
                  // onTap: () {},
                  icon: Icon(
                    Icons.notifications,
                    // size: 22.0,
                    // color: Colors.grey,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Profile',
                  // onTap: () {},
                  icon: Icon(
                    Icons.perm_identity,
                    // size: 22.0,
                    // color: Colors.grey,
                  ),
                ),
              ],
            ),
          );
        });
  }
}
