import 'dart:async';

import 'package:art/views/screens/language_change.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => LanguageChange())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              //Background Image
              image: AssetImage("images/Splash.png"),
              fit: BoxFit.cover,
              // colorFilter: new ColorFilter.mode(
              //     Colors.white.withOpacity(0.3), BlendMode.dstATop),
            ),
          ),
        ),
      ),
    );
  }
}
