import 'package:art/views/widgets/button.dart';
import 'package:art/views/widgets/colors.dart';
import 'package:art/views/widgets/constant.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF3D3A3A),
        title: Text("Ahsan"), //TODO:USER NAME HERE
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Text("Password", style: CardSubTitleStyle),
            SizedBox(height: 8.0),
            Container(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                width: 330.0,
                height: 50.0,
                decoration: BoxDecoration(
                  boxShadow: kElevationToShadow[1],
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),

                //***** ENTER Current Password
                //TODO: Current Password
                child: TextFormField(
                  obscureText: true,
                  decoration: kTxtField.copyWith(hintText: 'Current Password'),
                )),
            SizedBox(height: 15.0),
            Text("New Password", style: CardSubTitleStyle),
            SizedBox(height: 8.0),
            Container(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                width: 330.0,
                height: 50.0,
                decoration: BoxDecoration(
                  boxShadow: kElevationToShadow[1],
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),

                //***** ENTER Current Password
                //TODO: New Password
                child: TextFormField(
                  obscureText: true,
                  decoration: kTxtField.copyWith(hintText: 'New Password'),
                )),
            SizedBox(
              height: 15.0,
            ),
            Text("Confirm Password", style: CardSubTitleStyle),
            SizedBox(height: 8.0),
            Container(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                width: 330.0,
                height: 50.0,
                decoration: BoxDecoration(
                  boxShadow: kElevationToShadow[1],
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),

                //***** ENTER Current Password
                //TODO: Confirm Password
                child: TextFormField(
                  obscureText: true,
                  decoration: kTxtField.copyWith(hintText: 'Confirm Password'),
                )),
            SizedBox(
              height: 40.0,
            ),
            Button(
              text: Text(
                "Update Password",
                style: TextStyle(),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/naviga");
              },
              color: buttonBackgroundColor,
              focusColor: buttonColor1,
              disbaleColor: buttonColor2,
            ),
          ],
        ),
      ),
    );
  }
}
