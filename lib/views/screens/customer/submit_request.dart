import 'package:art/views/widgets/button.dart';
import 'package:art/views/widgets/colors.dart';
import 'package:art/views/widgets/constant.dart';
import 'package:art/views/widgets/imagelist.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:country_code_picker/country_code_picker.dart';

import 'package:flutter/material.dart';
import 're_submit.dart';

class Request extends StatefulWidget {
  @override
  _RequestState createState() => _RequestState();
}

class _RequestState extends State<Request> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFFF3D3A3A),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: AssetImage("images/ava.png"), //TODO: Profile Pic
            ),
            SizedBox(
              width: 5.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Oil painting",
                  style: TextStyle(fontSize: 16), //TODO: CATEGORY
                ),
                Text(
                  "Ahsan",
                  style: TextStyle(fontSize: 14),
                ), //TODO: USer NAme
              ],
            )
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 5.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              //TODO: image Slider
              child: CarouselSlider(
                options: CarouselOptions(
                  //height: 20,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                ),
                items: imgList
                    .map((item) => Container(
                          child: Center(
                              child: Image.asset(
                            item,
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width,
                          )),
                        ))
                    .toList(),
              ),
            ),
            Divider(thickness: 1.0),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.0),
                  Text("Personal Detail", style: CardTitleTxtStyle),
                  SizedBox(height: 15.0),

                  //************* Email
                  Text("Email", style: CardSubTitleStyle),
                  SizedBox(height: 8.0),
                  Container(
                      padding: EdgeInsets.only(left: 14.0, right: 10.0),
                      width: MediaQuery.of(context).size.width / 1.1,
                      height: 45.0,
                      decoration: BoxDecoration(
                        boxShadow: kElevationToShadow[1],
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                      ),

                      //***** ENTER Email TEXT FIELD
                      //TODO: EMAIL
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration:
                            kTxtField.copyWith(hintText: 'Example@mail.com'),
                      )),
                  SizedBox(height: 15.0),
                  Text("Phone Number", style: CardSubTitleStyle),
                  SizedBox(height: 8.0),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        width: 70.0,
                        child: Column(
                          children: [
                            //TODO: COUNTRY/Region  DROP DOWN
                            CountryCodePicker(
                              onChanged: print,
                              initialSelection: 'IT',
                              showCountryOnly: true,
                              showOnlyCountryWhenClosed: true,
                              favorite: ['+39', 'FR'],
                              showFlagDialog: true,
                              comparator: (a, b) => b.name.compareTo(a.name),
                              onInit: (code) => print(
                                  "on init ${code.dialCode} ${code.name} "),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 14.0, right: 10.0),
                          width: MediaQuery.of(context).size.width / 1.5,
                          height: 45.0,
                          decoration: BoxDecoration(
                            boxShadow: kElevationToShadow[1],
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.white,
                          ),

                          //***** Phone Number TEXT FIELD
                          //TODO: Phone Number
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration:
                                kTxtField.copyWith(hintText: '923235077538 '),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),

                  //************* City

                  Text("City", style: CardSubTitleStyle),
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

                      //***** ENTER City TEXT FIELD
                      //TODO: City
                      child: TextFormField(
                        decoration:
                            kTxtField.copyWith(hintText: 'Islamabad,pakistan'),
                      )),
                  SizedBox(height: 15.0),
                  Text("Price", style: CardSubTitleStyle),
                  SizedBox(height: 8.0),
                  Center(
                    child: Text(
                      "123 \$", //TODO: DISPLAY PRICE
                      style: kTextSpanGray,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  SliderTheme(
                    //TODO: PRICE SLIDER
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8D8E98),
                      activeTrackColor: Colors.grey[200],
                      thumbColor: Color(0xFFFF3D3A3A),
                      overlayColor: Colors.grey[200],
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: 120.0,
                      min: 100.0,
                      max: 230.0,
                      onChanged: (double newValue) {
                        setState(() {});
                      },
                    ),
                  ),

                  //************* Message
                  SizedBox(height: 15.0),
                  Text("Message", style: CardSubTitleStyle),
                  SizedBox(height: 8.0),
                  Container(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      width: 330.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        boxShadow: kElevationToShadow[1],
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),

                      //***** ENTER Message TEXT FIELD
                      //TODO: Message
                      child: TextFormField(
                        decoration: kTxtField.copyWith(hintText: 'type here'),
                      )),
                  SizedBox(height: 15.0),

                  SizedBox(
                    height: 20.0,
                  ),
                  Button(
                    text: Text(
                      "Submit Request",
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
          ],
        ),
      ),
    );
  }
}
