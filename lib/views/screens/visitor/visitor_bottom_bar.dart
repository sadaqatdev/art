import 'package:art/views/screens/visitor/visitor_Search.dart';
import 'package:art/views/screens/visitor/visitor_home.dart';
import 'package:flutter/material.dart';

class VisitorBottomBar extends StatefulWidget {
  @override
  _CustomerBottomBarState createState() => _CustomerBottomBarState();
}

class _CustomerBottomBarState extends State<VisitorBottomBar> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  int _selectedTab = 0;
  final _pageOptions = [
    VisitorHome(),
    visitorSearch(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      body: _pageOptions[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedTab,
        showSelectedLabels: true,
        selectedLabelStyle: TextStyle(
          fontSize: 12,
          color: Color(0xFFFF3D3A3A),
        ),
        selectedItemColor: Color(0xFFFF3D3A3A),
        elevation: 2,
        onTap: (int index) {
          setState(() {
            _selectedTab = index;
          });
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
            label: 'Search',
            // onTap: () {},
            icon: Icon(
              Icons.search,
              // size: 22.0,
              // color: Colors.grey,/
            ),
          ),
        ],
      ),
    );
  }
}
