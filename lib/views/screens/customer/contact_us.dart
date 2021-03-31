import 'package:art/views/widgets/button.dart';
import 'package:art/views/widgets/colors.dart';
import 'package:art/views/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF3D3A3A),
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text(
          "Contact Us",
          style: TextStyle(fontSize: height / 50, color: Colors.white),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: width / 1.1,
            //height: height/1.,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: height / 12,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Email",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: height / 50,
                          fontWeight: FontWeight.w500)),
                ),
                SizedBox(height: height / 60),
                CustomTextField(
                  hinttext: "enter your email address",
                  obscureText: false,
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(height: height / 60),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Phone No",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: height / 50,
                          fontWeight: FontWeight.w500)),
                ),
                SizedBox(height: height / 60),
                CustomTextField(
                  hinttext: "enter your Phone no",
                  obscureText: false,
                  textInputType: TextInputType.number,
                ),
                SizedBox(height: height / 60),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Message",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: height / 50,
                          fontWeight: FontWeight.w500)),
                ),
                SizedBox(height: height / 60),
                largeTextField(
                  hinttext: "Type message here",
                  obscureText: false,
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(height: height / 20),
                Button(
                  text: Text(
                    "Send",
                    style: TextStyle(),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/customerBottomBar");
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
