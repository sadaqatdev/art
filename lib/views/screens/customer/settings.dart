import 'package:art/views/screens/Customer/contact_us.dart';
import 'package:art/views/screens/Customer/customer_login.dart';
import 'package:art/views/screens/Customer/profile_update.dart';
import 'package:art/views/screens/customer/privacy_and_security.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'about_us.dart';
import 'help_and_support.dart';
import 'notification.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFF3D3A3A),
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
          title: Text(
            "Settings",
            style: TextStyle(fontSize: height / 50, color: Colors.white),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            children: [
              SizedBox(
                height: height / 20,
              ),
              Container(
                width: width / 1.1,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfileUpdate()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Account',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height / 50,
                            fontWeight: FontWeight.w500),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              Container(
                width: width / 1.1,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NotificationScreen()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Notifications',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height / 50,
                            fontWeight: FontWeight.w500),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              Container(
                width: width / 1.1,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PrivacyAndSecurity()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Privacy & Security',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height / 50,
                            fontWeight: FontWeight.w500),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              Container(
                width: width / 1.1,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HelpAndSupport()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Help and Support',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height / 50,
                            fontWeight: FontWeight.w500),
                      ),
                      IconButton(
                          icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      )),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              Container(
                width: width / 1.1,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutUs()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'About Us',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height / 50,
                            fontWeight: FontWeight.w500),
                      ),
                      IconButton(
                          icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      )),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              Container(
                width: width / 1.1,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContactUs()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Contact Us',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height / 50,
                            fontWeight: FontWeight.w500),
                      ),
                      IconButton(
                          icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      )),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              Container(
                width: width / 1.1,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new CustomerLogin()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Logout',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height / 50,
                            fontWeight: FontWeight.w500),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
              )
            ],
          ),
        ),
      ),
    );
  }
}
