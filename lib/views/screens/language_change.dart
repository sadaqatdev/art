import 'package:art/views/widgets/button.dart';
import 'package:art/views/widgets/colors.dart';
import 'package:flutter/material.dart';

class LanguageChange extends StatefulWidget {
  // @override
  _LanguageChangeState createState() => _LanguageChangeState();
}

class _LanguageChangeState extends State<LanguageChange> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: height / 7,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200.0,
                child: Image(
                  image: AssetImage('images/logo.png'), //TODO: Logo Image
                ),
              ),
              SizedBox(
                height: height / 20,
              ),
              Text(
                "Select Language",
                style: TextStyle(
                    color: Color(0xFFFF3D3A3A),
                    fontWeight: FontWeight.w400,
                    fontSize: height / 30),
              ),
              SizedBox(
                height: height / 60,
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
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: DropdownButtonHideUnderline(
                        child: ButtonTheme(
                          alignedDropdown: true,
                          child: DropdownButton<String>(
                            isDense: true,
                            hint: new Text("Select Language"),
                            value: _myselection,
                            onChanged: (String newValue) {
                              setState(() {
                                _myselection = newValue;
                              });
                            },
                            items: flags.map((Map map) {
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
                  Navigator.pushNamed(context, "/countrySelect");
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

  String _myselection;
  List<Map> flags = [
    {"id": 0, "image": "flags/english.png", "name": 'English'},
    {"id": 1, "image": "flags/morocco.png", "name": 'Arabic'},
    {"id": 2, "image": "flags/french.png", "name": 'Francais'},

    // const Item('Morocco', Image(image: AssetImage("flags/morocco.png"),)),
    // const Item('Algeria', Image(image: AssetImage("flags/algeria.png"),)),
    // const Item('Libya', Image(image: AssetImage("flags/libya.png"),)),
    // const Item('Tunisia', Image(image: AssetImage("flags/tunisia.png"),)),
    // const Item('Egypt', Image(image: AssetImage("flags/egypt.png"),)),
  ];
}
