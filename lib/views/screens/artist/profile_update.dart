import 'package:art/views/widgets/button.dart';
import 'package:art/views/widgets/colors.dart';
import 'package:art/views/widgets/constant.dart';
import 'package:art/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class sellerProfileUpdate extends StatefulWidget {
  @override
  _sellerProfileUpdateState createState() => _sellerProfileUpdateState();
}

class _sellerProfileUpdateState extends State<sellerProfileUpdate> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    String name = "Ali talib";
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFFFF3D3A3A),
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
          title: Text(
            "Update Profile",
            style: TextStyle(fontSize: height / 50, color: Colors.white),
          ),
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
                    Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Center(
                          child: CircleAvatar(
                            radius: height / 30,
                            backgroundImage: AssetImage(
                                "images/ava.png"), //TODO: Profile Pic
                          ),
                        ),
                        Positioned(
                          top: 18.0,
                          left: 177.0,
                          child: IconButton(
                            icon: Icon(
                              Icons.camera_alt,
                              color: Colors.black,
                              size: height / 35,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
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
                    SizedBox(
                      height: height / 60,
                    ),
                    Text("City",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: height / 60,
                            fontWeight: FontWeight.w500)),
                    SizedBox(height: height / 60),
                    CustomTextField(
                      hinttext: "enter your city",
                      obscureText: false,
                      textInputType: TextInputType.text,
                    ),
                    SizedBox(
                      height: height / 60,
                    ),
                    Text("Bio",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: height / 60,
                            fontWeight: FontWeight.w500)),
                    SizedBox(height: height / 60),
                    CustomTextField(
                      hinttext: "enter Bio",
                      obscureText: false,
                      textInputType: TextInputType.text,
                    ),
                    SizedBox(height: height / 60),
                    Row(
                      children: [
                        Text("Gender",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: height / 60,
                                fontWeight: FontWeight.w500)),
                        SizedBox(
                          width: width / 3.5,
                        ),
                        Text("DOB",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: height / 60,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                    SizedBox(
                      height: height / 60,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 12.0, right: 12.0),
                          width: width / 3.2,
                          height: height / 20,
                          decoration: BoxDecoration(
                            boxShadow: kElevationToShadow[1],
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.white,
                          ),
                          //TODO: SELECT Gender
                          child: DropdownButton(
                              underline: SizedBox(),
                              isExpanded: true,
                              //isDense: true,
                              value: _value,
                              items: [
                                DropdownMenuItem(
                                  child: Text("Male"),
                                  value: 1,
                                ),
                                DropdownMenuItem(
                                  child: Text("Female"),
                                  value: 2,
                                ),
                                DropdownMenuItem(
                                    child: Text("Other"), value: 3),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  _value = value;
                                });
                              }),
                        ),
                        SizedBox(
                          width: width / 15,
                        ),
                        dateOfBirthTextField(
                          hinttext: "DOB",
                          obscureText: false,
                          textInputType: TextInputType.datetime,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height / 60,
                    ),
                    Text(
                      "Account & Privacy",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: height / 50,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text("Password",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: height / 60,
                            fontWeight: FontWeight.w500)),
                    SizedBox(height: height / 60),
                    CustomTextField(
                      hinttext: "Tap to change password",
                      obscureText: false,
                      textInputType: TextInputType.text,
                    ),
                    SizedBox(
                      height: height / 60,
                    ),
                    Text(
                      "Social Media Links",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: height / 50,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: height / 60,
                    ),
                    Text("Facebook",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: height / 60,
                            fontWeight: FontWeight.w500)),
                    SizedBox(height: height / 60),
                    CustomTextField(
                      hinttext: "Facebook links here",
                      obscureText: false,
                      textInputType: TextInputType.text,
                    ),
                    SizedBox(height: height / 60),
                    Text("WhatsApp",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: height / 60,
                            fontWeight: FontWeight.w500)),
                    SizedBox(height: height / 60),
                    CustomTextField(
                      hinttext: "WhatsApp links here",
                      obscureText: false,
                      textInputType: TextInputType.text,
                    ),
                    SizedBox(
                      height: height / 50,
                    ),
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
      ),
    );
  }
}
