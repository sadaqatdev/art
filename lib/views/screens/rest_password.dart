import 'package:art/views/widgets/button.dart';
import 'package:art/views/widgets/colors.dart';
import 'package:art/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class RestPassword extends StatefulWidget {
  @override
  _RestPasswordState createState() => _RestPasswordState();
}

class _RestPasswordState extends State<RestPassword> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF3D3A3A),
        title: Text("ForgetPassword"), //TODO:USER NAME
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: width / 1.2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height / 60,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200.0,
                  child: Image(
                    image: AssetImage('images/logo.png'), //TODO: Logo Image
                  ),
                ),
                //*******************LOGIN IN TO ART FOR you TEXT
                Text(
                  'Reset Password',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: height / 40),
                ),
                SizedBox(height: height / 70),
                Container(
                  width: width / 1.2,
                  child: Text(
                    'Enter email address, we will email you a link to reset your password',
                    style: TextStyle(color: Colors.grey, fontSize: height / 50),
                  ),
                ),
                SizedBox(height: height / 70),
                //************* EMAIL TEXT
                Text("Email",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: height / 50)),
                SizedBox(height: height / 60),
                CustomTextField(
                  hinttext: "Enter Your email",
                  obscureText: false,
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(height: height / 60),

                //************* PASSWORD TEXT

                SizedBox(height: height / 25),
                Button(
                  text: Text(
                    "Reset",
                    style: TextStyle(),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: buttonBackgroundColor,
                  focusColor: buttonColor2,
                  disbaleColor: buttonColor2,
                ),
                SizedBox(height: height / 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
