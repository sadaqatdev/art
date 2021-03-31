import 'package:art/views/widgets/button.dart';
import 'package:art/views/widgets/colors.dart';
import 'package:flutter/material.dart';

import 'Artist/artist_login.dart';

class SelectUser extends StatefulWidget {
  @override
  _SelectUserState createState() => _SelectUserState();
}

class _SelectUserState extends State<SelectUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // decoration: BoxDecoration(
          //   gradient: LinearGradient(
          //     begin: Alignment.topRight,
          //     end: Alignment.bottomLeft,
          //     stops: [0.2, 0.6, 0.5, 0.6, 0.9, 0.9],
          //     colors: [
          //       Colors.white,
          //       Colors.white,
          //       Colors.blue[50],
          //       Colors.white,
          //       Colors.blue[50],
          //       Colors.blue[50],
          //     ],
          //   ),
          // ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200.0,
                  child: Image(
                    image: AssetImage('images/logo.png'), //TODO: Logo Image
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  "Login as a",
                  style: TextStyle(
                      color: Color(0xFFFF3D3A3A),
                      fontWeight: FontWeight.bold,
                      fontSize: 26.0),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Button(
                  text: Text(
                    "Seller",
                    style: TextStyle(),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/artistLogin");
                  },
                  color: buttonBackgroundColor,
                  focusColor: buttonColor1,
                  disbaleColor: buttonColor2,
                ),
                SizedBox(height: 20.0),
                Button(
                  text: Text(
                    "Customer",
                    style: TextStyle(),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/signIn");
                  },
                  color: buttonBackgroundColor,
                  focusColor: buttonColor1,
                  disbaleColor: buttonColor2,
                ),
                SizedBox(height: 20.0),
                Button(
                  text: Text(
                    "Visitor",
                    style: TextStyle(),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/visitorBottom");
                  },
                  color: buttonBackgroundColor,
                  focusColor: buttonColor1,
                  disbaleColor: buttonColor2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
