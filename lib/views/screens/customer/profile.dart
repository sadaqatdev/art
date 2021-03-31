import 'package:art/controllers/customer_profile_controller.dart';
import 'package:art/views/screens/customer/profile_update.dart';
import 'package:art/views/widgets/button.dart';
import 'package:art/views/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFFFF3D3A3A),
          iconTheme: IconThemeData(
            color: Colors.red, //change your color here
          ),
          title: Text(
            "Profile",
            style: TextStyle(fontSize: height / 50, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: GetBuilder<CustommerProfileController>(
            init: CustommerProfileController(),
            builder: (controller) {
              return Column(
                children: [
                  SizedBox(
                    height: height / 30,
                  ),
                  Center(
                    child: Container(
                      child: CircleAvatar(
                        radius: height / 25,
                        backgroundImage:
                            AssetImage("images/ava.png"), //TODO: Profile Pic
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.grey,
                          size: 25,
                        ),
                        SizedBox(
                          width: width / 80,
                        ),
                        Text.rich(
                          TextSpan(children: <InlineSpan>[
                            TextSpan(
                              text: "Name",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize:
                                      MediaQuery.of(context).size.height / 45,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: "\n${controller.name}",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize:
                                      MediaQuery.of(context).size.height / 50,
                                  fontWeight: FontWeight.w500),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.email,
                          color: Colors.grey,
                          size: 25,
                        ),
                        SizedBox(
                          width: width / 80,
                        ),
                        Text.rich(
                          TextSpan(children: <InlineSpan>[
                            TextSpan(
                              text: "Email",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize:
                                      MediaQuery.of(context).size.height / 45,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: "\n${controller.email}",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize:
                                      MediaQuery.of(context).size.height / 50,
                                  fontWeight: FontWeight.w500),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_city,
                          color: Colors.grey,
                          size: 25,
                        ),
                        SizedBox(
                          width: width / 80,
                        ),
                        Text.rich(
                          TextSpan(children: <InlineSpan>[
                            TextSpan(
                              text: "Country",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize:
                                      MediaQuery.of(context).size.height / 45,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: "\n${controller.country}",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize:
                                      MediaQuery.of(context).size.height / 50,
                                  fontWeight: FontWeight.w500),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),

                  //phone
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.grey,
                          size: 25,
                        ),
                        SizedBox(
                          width: width / 80,
                        ),
                        Text.rich(
                          TextSpan(children: <InlineSpan>[
                            TextSpan(
                              text: "Phone",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize:
                                      MediaQuery.of(context).size.height / 45,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: "\n${controller.phoneNo}",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize:
                                      MediaQuery.of(context).size.height / 50,
                                  fontWeight: FontWeight.w500),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height / 25,
                  ),
                  Button(
                    text: Text(
                      "Edit",
                      style: TextStyle(),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileUpdate()));
                    },
                    color: buttonBackgroundColor,
                    focusColor: buttonColor1,
                    disbaleColor: buttonColor2,
                  ),
                ],
              );
            }));
  }
}
