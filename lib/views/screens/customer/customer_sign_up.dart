import 'package:art/views/widgets/button.dart';
import 'package:art/views/widgets/colors.dart';
import 'package:art/views/widgets/constant.dart';
import 'package:art/views/widgets/custom_text_field.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_code_picker/country_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'customer_login.dart';
import 'confirmation.dart';

class CustomerSignUp extends StatefulWidget {
  @override
  _CustomerSignUpState createState() => _CustomerSignUpState();
}

class _CustomerSignUpState extends State<CustomerSignUp> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: width / 1.2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height / 20),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: height / 3,
                  child: Image(
                    image: AssetImage('images/logo.png'), //TODO: Logo Image
                  ),
                ),

                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Join the ',
                        style: kTextSpanGray,
                      ),
                      TextSpan(
                        text: 'Art',
                        style: kTextSpanBlue,
                      ),
                      TextSpan(text: 'Lik', style: kTextSpanRed),
                      TextSpan(
                        text: ' Community',
                        style: kTextSpanGray,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height / 50),
                Text("Country/Region",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: height / 50,
                        fontWeight: FontWeight.w500)),
                SizedBox(height: height / 60),
                Container(
                    padding: EdgeInsets.only(left: 12.0, right: 12.0),
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: 45.0,
                    decoration: BoxDecoration(
                      boxShadow: kElevationToShadow[1],
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                    ),
                    //TODO: SELECT COUNTRY / REGION DROPDOWN
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: DropdownButtonHideUnderline(
                          child: ButtonTheme(
                            alignedDropdown: true,
                            child: DropdownButton<String>(
                              isDense: true,
                              hint: new Text("Select Country"),
                              value: _selectedCountry,
                              onChanged: (String newValue) {
                                setState(() {
                                  _selectedCountry = newValue;
                                });
                              },
                              items: countries.map((Map map) {
                                return DropdownMenuItem<String>(
                                  value: map["name"].toString(),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(right: 10),
                                        child: Text(map["code"]),
                                      ),
                                      Image.asset(
                                        map["image"],
                                        width: 25,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Text(map["name"]),
                                      )
                                    ],
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ))
                      ],
                    )),
                SizedBox(height: height / 60),
                Text("Phone Number",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: height / 50,
                        fontWeight: FontWeight.w500)),
                SizedBox(height: height / 60),
                //TODO: Phone Number
                CustomTextField(
                  hinttext: "Enter your Phone Number",
                  obscureText: false,
                  textInputType: TextInputType.number,
                ),
                SizedBox(height: height / 40),
                Text(
                  "We'll text you to confirm your number",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: height / 50,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: height / 60),
                Button(
                  text: Text(
                    "Sign Up with phone number",
                    style: TextStyle(),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/customerconfrimation");
                  },
                  color: buttonBackgroundColor,
                  focusColor: buttonColor1,
                  disbaleColor: buttonColor2,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Or use Social Media",
                      style: kLoginText,
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(
                        'images/gmail.png',
                      ),
                      height: height / 12,
                      width: width / 10,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image(
                      image: AssetImage('images/facebook.png'),
                      height: height / 30,
                      fit: BoxFit.cover,
                      // width: width / 10,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image(
                      image: AssetImage('images/phone.png'),
                      height: height / 28,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
                Center(
                  child: Container(
                    width: width / 1.6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, "/signIn");
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600,
                                    fontSize: height / 50),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height / 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _selectedCountry;
  List<Map> countries = [
    {"id": 0, "image": "flags/morocco.png", "name": 'Morocco', "code": '+212'},
    {"id": 1, "image": "flags/algeria.png", "name": 'Algeria', "code": '+213'},
    {"id": 2, "image": "flags/libya.png", "name": 'Libya', "code": '+218'},
    {"id": 3, "image": "flags/tunisia.png", "name": 'Tunisia', "code": '+216'},
    {"id": 4, "image": "flags/egypt.png", "name": 'Egypt', "code": '+20'},
  ];
}
