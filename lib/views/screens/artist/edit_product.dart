import 'package:art/views/widgets/button.dart';
import 'package:art/views/widgets/colors.dart';
import 'package:art/views/widgets/constant.dart';
import 'package:art/views/widgets/custom_text_field.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dashed_container/dashed_container.dart';

class editProduct extends StatefulWidget {
  @override
  _editProductState createState() => _editProductState();
}

class _editProductState extends State<editProduct> {
  RangeValues values = RangeValues(200, 2000);
  RangeLabels labels = RangeLabels('200', "2000");

  List<String> _country = ['X', 'y', 'Z', 'D']; //TODO: Country LIST
  String _selectedCountry;

  //**
  bool status1 = false;
  bool status2 = false;
  bool status3 = false;
  Color screenPickerColor;
  bool isDark;
  void initState() {
    screenPickerColor = Colors.blue;
    isDark = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFFFF3D3A3A),
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
          title: Text(
            "Edit Product",
            style: TextStyle(fontSize: height / 50, color: Colors.white),
          ),
          centerTitle: true,
        ),
        //backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Center(
          child: Container(
            width: width / 1.1,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ImageUploadContainer(
                      //TODO:IMAGE UPLOAD DOTTED CONTAINER
                      onTap: () {},
                    ),
                    ImageUploadContainer(
                      //TODO:IMAGE UPLOAD DOTTED CONTAINER
                      onTap: () {},
                    ),
                    ImageUploadContainer(
                      //TODO:IMAGE UPLOAD DOTTED CONTAINER
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height / 60,
              ),

              Text(
                "Basic Info",
                style: CardTitleTxtStyle,
              ),
              SizedBox(
                height: height / 60,
              ),
              Text("Choose Category",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: height / 50,
                      fontWeight: FontWeight.w500)),
              SizedBox(
                height: height / 80,
              ),
              Container(
                padding: EdgeInsets.only(left: 12.0, right: 12.0),
                width: width / 1.1,
                height: 45.0,
                decoration: BoxDecoration(
                  boxShadow: kElevationToShadow[1],
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                //TODO:CATEGORY DROPDOWN
                child: DropdownButton(
                  underline: SizedBox(),
                  isExpanded: true,
                  hint: Text('Category'), // Not necessary for Option 1
                  value: _selectedCategory,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedCategory = newValue;
                    });
                  },
                  items: _category.map((location) {
                    return DropdownMenuItem(
                      child: Text(location),
                      value: location,
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text("Sub Category",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: height / 50,
                      fontWeight: FontWeight.w500)),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 12.0, right: 12.0),
                width: width / 1.1,
                height: 45.0,
                decoration: BoxDecoration(
                  boxShadow: kElevationToShadow[1],
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                //TODO:SUB CATEGORY
                child: DropdownButton(
                  underline: SizedBox(),
                  isExpanded: true,
                  hint: Text('Sub Category'), // Not necessary for Option 1
                  value: _selectedSubCountry,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedSubCountry = newValue;
                    });
                  },
                  items: _subCountry.map((location) {
                    return DropdownMenuItem(
                      child: Text(location),
                      value: location,
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 15.0),

              //************* Price
              Text("Price",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: height / 50,
                      fontWeight: FontWeight.w500)),
              SizedBox(height: 8.0),

              CustomTextField(
                hinttext: "Enter Price",
                obscureText: false,
                textInputType: TextInputType.number,
              ),
              SizedBox(height: 15.0),

              //************* Price
              Text("Enter Product Details",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: height / 50,
                      fontWeight: FontWeight.w500)),
              SizedBox(height: 8.0),
              CustomTextField(
                hinttext: "Enter Product Details",
                obscureText: false,
                textInputType: TextInputType.text,
              ),
              SizedBox(height: 15.0),
              Text("Country",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: height / 50,
                      fontWeight: FontWeight.w500)),
              SizedBox(
                height: 8.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 12.0, right: 12.0),
                width: width / 1.1,
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

              SizedBox(height: 15.0),

              Text("City",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: height / 50,
                      fontWeight: FontWeight.w500)),
              SizedBox(
                height: 8.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 12.0, right: 12.0),
                width: width / 1.1,
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

              SizedBox(
                height: 8.0,
              ),
              Text("Dimensions",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: height / 50,
                      fontWeight: FontWeight.w500)),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  smallTextField(
                    hinttext: "Height",
                    obscureText: false,
                    textInputType: TextInputType.number,
                  ),
                  smallTextField(
                    hinttext: "Width",
                    obscureText: false,
                    textInputType: TextInputType.number,
                  ),
                  smallTextField(
                    hinttext: "Depth",
                    obscureText: false,
                    textInputType: TextInputType.number,
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Text("Keywords",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: height / 50,
                      fontWeight: FontWeight.w500)),
              SizedBox(height: 8.0),
              CustomTextField(
                hinttext: "Enter Keywords",
                obscureText: false,
                textInputType: TextInputType.text,
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
              Text("Artist Name",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: height / 50,
                      fontWeight: FontWeight.w500)),
              SizedBox(height: 8.0),
              CustomTextField(
                hinttext: "Artist Name",
                obscureText: false,
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 15.0,
              ),

              Text("Materials",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: height / 50,
                      fontWeight: FontWeight.w500)),
              SizedBox(height: 8.0),
              CustomTextField(
                hinttext: "Enter Materials",
                obscureText: false,
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text("Description",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: height / 50,
                      fontWeight: FontWeight.w500)),
              SizedBox(height: 8.0),
              largeTextField(
                hinttext: "",
                obscureText: false,
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text("Status",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: height / 50,
                      fontWeight: FontWeight.w500)),
              SizedBox(
                height: 10.0,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("Availability"),
                Switch(
                  //TODO: Availability BUTTON
                  // title: Text('Out of Stock'),
                  value: status1,
                  onChanged: (bool value) {
                    setState(() {
                      status1 = value;
                    });
                  },
                ),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("Active"),
                Switch(
                  //TODO: Active BUTTON
                  // title: Text('Out of Stock'),
                  value: status2,
                  onChanged: (bool value) {
                    setState(() {
                      status2 = value;
                    });
                  },
                ),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("Sold"),
                Switch(
                  //TODO: Sold BUTTON
                  // title: Text('Out of Stock'),
                  value: status3,
                  onChanged: (bool value) {
                    setState(() {
                      status3 = value;
                    });
                  },
                ),
              ]),
              SizedBox(height: 15.0),
              Center(
                child: Button(
                  text: Text(
                    "Post",
                    style: TextStyle(),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/naviga");
                  },
                  color: buttonBackgroundColor,
                  focusColor: buttonColor1,
                  disbaleColor: buttonColor2,
                ),
              ),
              SizedBox(height: 15.0),
            ]),
          ),
        )),
      ),
    );
  }

  List<String> _category = [
    'Category 1',
    'Category 2',
    'Category 3',
    'Category 4',
  ]; //TODO: Country LIST
  String _selectedCategory;
  List<String> _subCountry = [
    'Sub Category 1',
    'Sub Category 2',
    'Sub Category 3',
    'Sub Category 4',
  ]; //TODO: Country LIST
  String _selectedSubCountry;
}

class ImageUploadContainer extends StatelessWidget {
  ImageUploadContainer({this.onTap});
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: DashedContainer(
          child: Container(
            child: Icon(
              Icons.camera_alt_rounded,
              color: Colors.grey,
              size: 20,
            ),
            height: 70,
            width: 70.0,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
          ),
          dashColor: Colors.grey.shade400,
          borderRadius: 4.0,
          dashedLength: 15.0,
          blankLength: 3.0,
          strokeWidth: 2.0,
        ),
      ),
    );
  }
}
