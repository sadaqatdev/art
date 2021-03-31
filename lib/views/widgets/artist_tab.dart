import 'package:art/views/screens/Artist/artist_home.dart';
import 'package:art/views/screens/Customer/customer_login.dart';
import 'package:art/views/screens/Customer/settings.dart';
import 'package:art/views/screens/artist/artist_accepted_order.dart';
import 'package:art/views/screens/artist/artist_canceled_order.dart';
import 'package:flutter/material.dart';

class ArtistTab extends StatefulWidget {
  @override
  _ArtistTabState createState() => _ArtistTabState();
}

class _ArtistTabState extends State<ArtistTab> {
  String status;
  bool _switch = true;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Color(0xFFFF3D3A3A),
            title: Text(
              "Home",
              style: TextStyle(fontSize: height / 50),
            ),
            centerTitle: true,
            actions: [
              Row(
                children: [
                  Switch(
                    //TODO: Availability BUTTON
                    // title: Text('Out of Stock'),
                    value: _switch,
                    onChanged: (bool value) {
                      setState(() {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CustomerLogin()));
                      });
                    },
                  ),
                  Text(
                    "Artist",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.settings,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Settings()),
                      );
                    },
                  ),
                ],
              )
            ],
            bottom: TabBar(
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              tabs: [
                Tab(
                  text: ("home "),
                ),
                Tab(
                  text: ("Accepted"),
                ),
                Tab(
                  text: ("Canceled"),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              // Text("hello"),
              HomeScreen(),
              AcceptedOrder(),
              // ShippedOrders(),
              CancelOrder(),
            ],
          ),
        ),
      ),
    );
  }
//
}
