import 'package:art/views/widgets/button.dart';
import 'package:art/views/widgets/colors.dart';
import 'package:flutter/material.dart';

class CountrySelect extends StatefulWidget {
  // @override
  _CountrySelectState createState() => _CountrySelectState();
}

class _CountrySelectState extends State<CountrySelect> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: width / 1.2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: height / 7,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: height / 3,
                child: Image(
                  image: AssetImage('images/logo.png'), //TODO: Logo Image
                ),
              ),
              SizedBox(
                height: height / 20,
              ),
              Text(
                "Select Country",
                style: TextStyle(
                    color: Color(0xFFFF3D3A3A),
                    fontWeight: FontWeight.w500,
                    fontSize: height / 30),
              ),
              SizedBox(
                height: height / 40,
              ),
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
              SizedBox(
                height: height / 40,
              ),
              //
              Button(
                text: Text(
                  "Continue",
                  style: TextStyle(),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/selectUser");
                },
                color: buttonBackgroundColor,
                focusColor: buttonColor1,
                disbaleColor: buttonColor2,
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _selectedCountry;
  List<Map> countries = [
    {"id": 0, "image": "flags/morocco.png", "name": 'Morocco'},
    {"id": 1, "image": "flags/algeria.png", "name": 'Algeria'},
    {"id": 2, "image": "flags/libya.png", "name": 'Libya'},
    {"id": 3, "image": "flags/tunisia.png", "name": 'Tunisia'},
    {"id": 4, "image": "flags/egypt.png", "name": 'Egypt'},
  ];
}
