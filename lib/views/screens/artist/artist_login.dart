import 'package:art/views/widgets/button.dart';
import 'package:art/views/widgets/colors.dart';
import 'package:art/views/widgets/constant.dart';
import 'package:art/views/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArtistLogin extends StatefulWidget {
  @override
  _ArtistLoginState createState() => _ArtistLoginState();
}

class _ArtistLoginState extends State<ArtistLogin> {
  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

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
                SizedBox(height: height / 15),
                Container(
                  // color: Colors.red,
                  width: MediaQuery.of(context).size.width,
                  height: height / 3.5,
                  child: Image(
                    image: AssetImage('images/logo.png'), //TODO: Logo Image
                  ),
                ),
                //*******************LOGIN IN TO ART FOR you TEXT
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: 'Login in to ', style: kTextSpanGray),
                      TextSpan(text: 'Art', style: kTextSpanBlue),
                      TextSpan(
                        text: 'Lik',
                        style: kTextSpanRed,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height / 60),
                //************* EMAIL TEXT
                Text("Email",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: height / 50,
                        fontWeight: FontWeight.w500)),
                SizedBox(height: height / 60),
                CustomTextField(
                  hinttext: "enter your email address",
                  obscureText: false,
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(height: height / 60),

                //************* PASSWORD TEXT
                Text("Password",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: height / 50,
                        fontWeight: FontWeight.w500)),
                SizedBox(height: height / 60),
                CustomTextField(
                  iconButton: IconButton(
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Color(0xff05a2fc),
                    ),
                    iconSize: 18,
                    color: basicColorShopper,
                    onPressed: _toggle,
                  ),
                  hinttext: "· · · · · · · · · ·",
                  obscureText: _obscureText,
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(height: height / 60),

                Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/forgotPassword");
                      },
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: height / 50),
                      ),
                    )),

                //TODO: LOGIN BUTTON
                SizedBox(height: height / 40),
                Button(
                  text: Text(
                    "Login",
                    style: TextStyle(),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/artistBottomBar");
                  },
                  color: buttonBackgroundColor,
                  focusColor: buttonColor1,
                  disbaleColor: buttonColor2,
                ),
                SizedBox(
                  height: height / 50,
                ),

                Center(
                  child: Container(
                    width: width / 3,
                    child: Column(
                      children: [
                        Text(
                          "Login Via",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Row(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Image(
                              image: AssetImage(
                                'images/gmail.png',
                              ),
                              height: height / 12,
                              width: width / 10,
                            ),
                            Image(
                              image: AssetImage('images/facebook.png'),
                              height: height / 30,
                              fit: BoxFit.cover,
                              // width: width / 10,
                            ),
                            Image(
                              image: AssetImage('images/phone.png'),
                              height: height / 28,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                Center(
                  child: Container(
                    width: width / 1.7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have Account ?",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, "/artistSignUp");
                              },
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600,
                                    fontSize: height / 50),
                              ),
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
