import 'dart:async';

import 'package:art/views/screens/customer/customer_signup_detail.dart';
import 'package:art/views/widgets/constant.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class NumConfirm extends StatefulWidget {
  @override
  _NumConfirmState createState() => _NumConfirmState();
}

class _NumConfirmState extends State<NumConfirm> {
  var onTapRecognizer;

  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";

  StreamController<ErrorAnimationType> errorController;

  bool hasError = false;
  String currentText = "";
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    onTapRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.pop(context);
      };
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(
                left: 30.0, right: 20, bottom: 20, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40.0),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200.0,
                  child: Image(
                    image: AssetImage('images/logo.png'), //TODO: Logo Image
                  ),
                ),
                Text("Confirm your number", style: kTextStyleHeader),
                SizedBox(
                  height: 10.0,
                ),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Enter the 4-Digit Code ',
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'Art',
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                          text: 'lik',
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.red,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  // color: Colors.pink,
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: MediaQuery.of(context).size.height / 10,
                  child: Form(
                    key: formKey,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 30),
                        child: PinCodeTextField(
                          appContext: context,
                          pastedTextStyle: TextStyle(
                            color: Colors.green.shade600,
                            fontWeight: FontWeight.bold,
                          ),
                          length: 4,
                          obscureText: false,
                          animationType: AnimationType.fade,

                          pinTheme: PinTheme(
                            disabledColor: Colors.red.withOpacity(0.3),
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(10),
                            fieldHeight: 50,
                            fieldWidth: 50,
                            inactiveColor: Color(0xff4D6392),
                            inactiveFillColor: Color(0xff4D6392),
                            activeColor: Colors.black12,
                            selectedColor: Colors.white,
                            selectedFillColor: Color(0xff4D6392),
                            activeFillColor:
                                hasError ? Colors.orange : Colors.white,
                          ),
                          // cursorColor: Colors.black,
                          animationDuration: Duration(milliseconds: 300),
                          // backgroundColor: Colors.red,
                          enableActiveFill: true,
                          errorAnimationController: errorController,
                          controller: textEditingController,
                          keyboardType: TextInputType.number,

                          onCompleted: (v) {
                            formKey.currentState.validate();
                            // conditions for validating

                            setState(() {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (Context) =>
                                      CustomerSignUpDetail()));
                            });
                          },

                          // },
                          onChanged: (value) {
                            print(value);
                            setState(() {
                              currentText = value;
                            });
                          },
                          beforeTextPaste: (text) {
                            print("Allowing to paste $text");
                            //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                            //but you can show anything you want here, like your pop up saying wrong paste format or etc
                            return true;
                          },
                        )),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: RichText(
                      textAlign: TextAlign.end,
                      text: TextSpan(
                          text: "",
                          style:
                              TextStyle(color: Color(0xff4D6392), fontSize: 12),
                          children: [
                            TextSpan(
                                text: " RESEND",
                                style: TextStyle(
                                    color: Color(0xff4D6392),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16))
                          ]),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
