import 'package:art/views/widgets/button.dart';
import 'package:art/views/widgets/colors.dart';
import 'package:art/views/widgets/constant.dart';
import 'package:art/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileUpdate extends StatefulWidget {
  @override
  _ProfileUpdateState createState() => _ProfileUpdateState();
}

class _ProfileUpdateState extends State<ProfileUpdate> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    String name = "Ali talib";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF3D3A3A),
        title: Text(
          "Profile Update",
          style: TextStyle(fontSize: height / 50, color: Colors.white),
        ), //TODO: USER NAME
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: width / 1.1,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height / 50,
                  ),
                  Center(
                    child: CircleAvatar(
                      radius: height / 30,
                      backgroundImage:
                          AssetImage("images/ava.png"), //TODO: Profile Pic
                    ),
                  ),
                  SizedBox(
                    height: height / 60,
                  ),
                  Center(
                    child: Text(
                      "$name", //TODO: User Name
                      style: kTextStyleHeader,
                    ),
                  ),
                  SizedBox(
                    height: height / 50,
                  ),
                  Text("Personal Information",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: height / 50,
                          fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: height / 60,
                  ),
                  SizedBox(
                    height: height / 60,
                  ),
                  Text("User Name",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: height / 60,
                          fontWeight: FontWeight.w500)),
                  SizedBox(height: height / 60),
                  CustomTextField(
                    hinttext: "enter user name",
                    obscureText: false,
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: height / 60),
                  Text("Email",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: height / 60,
                          fontWeight: FontWeight.w500)),
                  SizedBox(height: height / 60),
                  CustomTextField(
                    hinttext: "Enter your email address",
                    obscureText: false,
                    textInputType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: height / 60,
                  ),
                  Text("Country",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: height / 60,
                          fontWeight: FontWeight.w500)),
                  SizedBox(height: height / 60),
                  CustomTextField(
                    hinttext: "enter your Country",
                    obscureText: false,
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(
                    height: height / 60,
                  ),
                  Text("Phone",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: height / 60,
                          fontWeight: FontWeight.w500)),
                  SizedBox(height: height / 60),
                  CustomTextField(
                    hinttext: "Enter Phone No",
                    obscureText: false,
                    textInputType: TextInputType.number,
                  ),
                  SizedBox(height: height / 60),
                  Text("Current Password",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: height / 60,
                          fontWeight: FontWeight.w500)),
                  SizedBox(height: height / 60),
                  CustomTextField(
                    hinttext: "Current Password",
                    obscureText: false,
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: height / 60),
                  Text("New Password",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: height / 60,
                          fontWeight: FontWeight.w500)),
                  SizedBox(height: height / 60),
                  CustomTextField(
                    hinttext: "New Password",
                    obscureText: false,
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: height / 60),
                  Center(
                    child: Button(
                      text: Text(
                        "Update Profile",
                        style: TextStyle(),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, "/artistBottomBar");
                      },
                      color: buttonBackgroundColor,
                      focusColor: buttonColor1,
                      disbaleColor: buttonColor2,
                    ),
                  ),
                  SizedBox(
                    height: height / 40,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
