import 'package:art/views/screens/visitor/visitor_search_result.dart';
import 'package:art/views/widgets/Chips.dart';
import 'package:art/views/widgets/constant.dart';
import 'package:art/views/widgets/custom_text_field.dart';
import 'package:art/views/widgets/flat_Button.dart';
import 'package:art/views/widgets/my_switch.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';

import 'package:checkbox_grouped/checkbox_grouped.dart';
import 'package:flutter/cupertino.dart';

class visitorSearch extends StatefulWidget {
  @override
  _visitorSearchState createState() => _visitorSearchState();
}

class _visitorSearchState extends State<visitorSearch> {
  RangeValues values = RangeValues(200, 2000);
  RangeLabels labels = RangeLabels('200', "2000");

  var newlist;

  List<String> reportList = [
    "Best Selling",
    "Highest Rated",
//    "Nothing from Them",
  ];
  List<String> selectedReportList = List();

  String selectedsclae = '\u2103';

  TextEditingController filterTxt = new TextEditingController();
//************************************************

  Color screenPickerColor;
  var newcategorylist;

  List<String> categoryList = [
//    "I Used a Shampoo",
    "Oil",
    "Pencil",
    "Art Calligraphy",
  ];
  List<String> selectedcategoryList = List();

  String selectedcategory = '\u2103';
  String _myselection;
  List<Map> flags = [
    {"id": 0, "image": "flags/morocco.png", "name": 'Morocco'},
    {"id": 1, "image": "flags/algeria.png", "name": 'Algeria'},
    {"id": 2, "image": "flags/libya.png", "name": 'Libya'},
    {"id": 3, "image": "flags/tunisia.png", "name": 'Tunisia'},
    {"id": 4, "image": "flags/egypt.png", "name": 'Egypt'},

    // const Item('Morocco', Image(image: AssetImage("flags/morocco.png"),)),
    // const Item('Algeria', Image(image: AssetImage("flags/algeria.png"),)),
    // const Item('Libya', Image(image: AssetImage("flags/libya.png"),)),
    // const Item('Tunisia', Image(image: AssetImage("flags/tunisia.png"),)),
    // const Item('Egypt', Image(image: AssetImage("flags/egypt.png"),)),
  ];

  // String currnt = Jiffy().yMMMEdjm;

  TextEditingController categoryTxt = new TextEditingController();
  //*****************************
  bool isDark;
  bool status = false;
  bool valuefirst = false;
  bool valuesecond = false;
  int _value = 1;
  @override
  void initState() {
    screenPickerColor = Colors.blue;
    isDark = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFFF3D3A3A),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FilterFlatButton(
              TxtColor: Colors.white,
              ButtonTitle: "Cancel", //TODO: Cancel Button
              onpressed: () {},
            ),
            Text(
              "Filter",
              style: TextStyle(fontSize: height / 50, color: Colors.white),
            ),
            FilterFlatButton(
              TxtColor: Colors.white,
              ButtonTitle: "Apply", //TODO: APPLY BUTTON
              onpressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => visitorSearchResult()));
              },
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: width / 1.1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height / 60,
                ),
                Text("Choice a Topic",
                    style: kTextStyleHeader), //TODO: SELECT CHIPS

                SelectChip(),
                //*********** CATEGORY***********
                Text("Specify your interest",
                    style: kTextStyleHeader), //TODO: Category Chip

                CategoryChip(),

                SizedBox(
                  height: 15.0,
                ),

                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 12.0, right: 12.0),
                        width: width / 2.28,
                        height: 45.0,
                        decoration: BoxDecoration(
                          boxShadow: kElevationToShadow[1],
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                        ),
                        //TODO: SELECT COUNTRY / REGION DROPDOWN
                        child: DropdownButton(
                          underline: SizedBox(),
                          isExpanded: true,
                          hint: Text('Country'), // Not necessary for Option 1
                          value: _selectedCountry,
                          onChanged: (newValue) {
                            setState(() {
                              _selectedCountry = newValue;
                            });
                          },
                          items: _country.map((location) {
                            return DropdownMenuItem(
                              child: Text(location),
                              value: location,
                            );
                          }).toList(),
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 12.0, right: 12.0),
                        width: width / 2.28,
                        height: 45.0,
                        decoration: BoxDecoration(
                          boxShadow: kElevationToShadow[1],
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                        ),
                        //TODO: SELECT COUNTRY / REGION DROPDOWN
                        child: DropdownButton(
                          underline: SizedBox(),
                          isExpanded: true,
                          hint: Text('City'), // Not necessary for Option 1
                          value: _selectedCountry,
                          onChanged: (newValue) {
                            setState(() {
                              _selectedCountry = newValue;
                            });
                          },
                          items: _country.map((location) {
                            return DropdownMenuItem(
                              child: Text(location),
                              value: location,
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 15.0,
                ),
                Center(
                  child: Container(
                    width: width / 1.15,
                    child: CustomTextField(
                      hinttext: "Enter keywords",
                      obscureText: false,
                      textInputType: TextInputType.emailAddress,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),

                Text("Price Range", style: kTextStyleHeader),
                Container(
                  width: width / 1.1,
                  child: RangeSlider(
                      divisions: 1000,
                      activeColor: Colors.red[700],
                      inactiveColor: Colors.red[300],
                      min: 200,
                      max: 2000,
                      values: values,
                      labels: labels,
                      onChanged: (value) {
                        print("START: ${value.start}, End: ${value.end}");
                        setState(() {
                          values = value;
                          labels = RangeLabels(
                              "RS.${value.start.toInt().toString()}",
                              "RS.${value.end.toInt().toString()}");
                        });
                      }),
                ),
                SizedBox(
                  height: 15.0,
                ),

                Text("Color", style: kTextStyleHeader),
                SizedBox(
                  width: width / 1.1,
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Card(
                      elevation: 2,
                      child: ColorPicker(
                        enableShadesSelection: false,
                        color: screenPickerColor,
                        onColorChanged: (Color color) =>
                            setState(() => screenPickerColor = color),
                        width: 44,
                        height: 44,
                        borderRadius: 22,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 15.0,
                ),
                Center(
                  child: Container(
                    width: width / 1.15,
                    child: CustomTextField(
                      hinttext: "Artist Name",
                      obscureText: false,
                      textInputType: TextInputType.emailAddress,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Divider(
                  color: Colors.black12,
                  thickness: 2.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.format_shapes,
                      size: 18,
                    ),
                    SizedBox(
                      width: 6.0,
                    ),
                    Text("Dimensions", style: kTextStyleHeader),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: Container(
                    width: width / 1.2,
                    height: height / 18,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.only(left: 10.0, right: 10.0),
                            width: width / 4,
                            decoration: BoxDecoration(
                              boxShadow: kElevationToShadow[1],
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: kTxtField.copyWith(
                                  hintText: 'Height (cm)'), //TODO:ENTER TAGs
                            )),
                        Container(
                            padding: EdgeInsets.only(left: 10.0, right: 10.0),
                            width: width / 4,
                            decoration: BoxDecoration(
                              boxShadow: kElevationToShadow[1],
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: kTxtField.copyWith(
                                  hintText: 'Width (cm)'), //TODO:ENTER TAGs
                            )),
                        Container(
                            padding: EdgeInsets.only(left: 10.0, right: 10.0),
                            width: width / 4,
                            decoration: BoxDecoration(
                              boxShadow: kElevationToShadow[1],
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: kTxtField.copyWith(
                                  hintText: 'Depth (cm)'), //TODO:ENTER TAGs
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Divider(
                  color: Colors.black12,
                  thickness: 2.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.line_weight,
                      size: 18,
                    ),
                    SizedBox(
                      width: 6.0,
                    ),
                    Text("Weight", style: kTextStyleHeader),
                    SizedBox(
                      width: width / 20,
                    ),
                    Container(
                        padding: EdgeInsets.only(
                          left: 10.0,
                          right: 10.0,
                        ),
                        width: width / 1.6,
                        height: 45.0,
                        decoration: BoxDecoration(
                          boxShadow: kElevationToShadow[1],
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: kTxtField.copyWith(
                              hintText: 'Weight in Grammes'), //TODO:ENTER TAGs
                        )),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Divider(
                  color: Colors.black12,
                  thickness: 2.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.format_paint,
                      size: 18,
                    ),
                    SizedBox(
                      width: 6.0,
                    ),
                    Text("Materials", style: kTextStyleHeader),
                    SizedBox(
                      width: width / 50,
                    ),
                    Container(
                        padding: EdgeInsets.only(
                          left: 10.0,
                          right: 10.0,
                        ),
                        width: width / 1.6,
                        height: 45.0,
                        decoration: BoxDecoration(
                          boxShadow: kElevationToShadow[1],
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: kTxtField.copyWith(
                              hintText: 'Enter material'), //TODO:ENTER TAGs
                        )),
                  ],
                ),
                MaterialsChips(),
                SizedBox(
                  width: width / 50,
                ),
                Divider(
                  color: Colors.black12,
                  thickness: 2.0,
                ),
                SizedBox(
                  width: width / 50,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.all_inbox,
                      size: 18,
                    ),
                    SizedBox(
                      width: 6.0,
                    ),
                    Text("Packaging", style: kTextStyleHeader),
                    SizedBox(
                      width: width / 5,
                    ),
                    mySwitch(
                      activeColor: Colors.green,
                      value: status,
                      onChanged: (value) {
                        print("VALUE : $value");
                        setState(() {
                          status = value;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(
                  width: width / 50,
                ),
                Divider(
                  color: Colors.black12,
                  thickness: 2.0,
                ),
                SizedBox(
                  width: width / 50,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.directions_car_sharp,
                      size: 18,
                    ),
                    SizedBox(
                      width: 6.0,
                    ),
                    Text("Delivery destination", style: kTextStyleHeader),
                    SizedBox(
                      width: width / 5,
                    ),
                  ],
                ),
                SizedBox(
                  height: height / 50,
                ),
                Center(
                  child: Container(
                      padding: EdgeInsets.only(left: 12.0, right: 12.0),
                      width: width / 1.2,
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
                                hint: new Text("Select country"),
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
                ),
                Divider(
                  color: Colors.black12,
                  thickness: 2.0,
                ),
                SizedBox(
                  width: width / 50,
                ),
                // countries with flag will be placed her
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      //height: height/,
                      width: width / 2.4,
                      // color: Colors.grey,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.credit_card,
                                size: height / 50,
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Text("Payment Methods",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: height / 60,
                                  )),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Checkbox(
                                    value: pay1,
                                    onChanged: (bool value) {
                                      setState(() {
                                        pay1 = value;
                                      });
                                    },
                                  ),
                                  Text(
                                    "Cash on delivery",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Checkbox(
                                    value: pay2,
                                    onChanged: (bool value) {
                                      setState(() {
                                        pay2 = value;
                                      });
                                    },
                                  ),
                                  Text(
                                    "Bank Transfer",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Checkbox(
                                    value: pay3,
                                    onChanged: (bool value) {
                                      setState(() {
                                        pay3 = value;
                                      });
                                    },
                                  ),
                                  Text(
                                    "Money Sending",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      //height: height/,
                      width: width / 2.4,
                      // color: Colors.grey,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.directions_car_sharp,
                                size: height / 50,
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Text("Delievrry Methods",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: height / 60,
                                  )),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Checkbox(
                                    value: delv1,
                                    onChanged: (bool value) {
                                      setState(() {
                                        delv1 = value;
                                      });
                                    },
                                  ),
                                  Text("DHL"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Checkbox(
                                    value: delv2,
                                    onChanged: (bool value) {
                                      setState(() {
                                        delv2 = value;
                                      });
                                    },
                                  ),
                                  Text(
                                    "Amana Express",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Checkbox(
                                    value: delv3,
                                    onChanged: (bool value) {
                                      setState(() {
                                        delv3 = value;
                                      });
                                    },
                                  ),
                                  Text(
                                    "Chronopost",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool pay1 = false;
  bool pay2 = false;
  bool pay3 = false;

  bool delv1 = false;
  bool delv2 = false;
  bool delv3 = false;

//Select Artist
  List<String> _artist = ['A', 'B', 'C', 'D']; //TODO: ARTIST LIST
  String _selectedArtist;

  //Select Country
  List<String> _country = ['X', 'y', 'Z', 'D']; //TODO: Country LIST
  String _selectedCountry;
}
