import 'package:art/controllers/custommer_search_controller.dart';
import 'package:art/views/screens/customer/search_result.dart';
import 'package:art/views/widgets/Chips.dart';
import 'package:art/views/widgets/constant.dart';
import 'package:art/views/widgets/custom_text_field.dart';
import 'package:art/views/widgets/flat_Button.dart';
import 'package:art/views/widgets/my_switch.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:checkbox_grouped/checkbox_grouped.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class CustomerSearch extends StatelessWidget {
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
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => CustomerSearchResult()));
              },
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: GetBuilder<CustommerSearchController>(
          init: CustommerSearchController(),
          builder: (controller) {
            return SingleChildScrollView(
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
                                hint: Text(
                                    'Country'), // Not necessary for Option 1
                                value: controller.selectedCountry,
                                onChanged: (newValue) {
                                  controller.updateCountry(newValue);
                                },
                                items: controller.country.map((location) {
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
                                hint:
                                    Text('City'), // Not necessary for Option 1
                                value: controller.selectedCountry,
                                onChanged: (newValue) {
                                  controller.selectedCountry = newValue;
                                },
                                items: controller.country.map((location) {
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
                            values: controller.values,
                            labels: controller.labels,
                            onChanged: (value) {
                              controller.updatePriceRange(value);
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
                              color: controller.screenPickerColor,
                              onColorChanged: (Color color) {
                                controller.updateColor(color);
                              },
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
                            textInputType: TextInputType.text,
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
                                  padding:
                                      EdgeInsets.only(left: 10.0, right: 10.0),
                                  width: width / 4,
                                  decoration: BoxDecoration(
                                    boxShadow: kElevationToShadow[1],
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: kTxtField.copyWith(
                                        hintText:
                                            'Height (cm)'), //TODO:ENTER TAGs
                                  )),
                              Container(
                                  padding:
                                      EdgeInsets.only(left: 10.0, right: 10.0),
                                  width: width / 4,
                                  decoration: BoxDecoration(
                                    boxShadow: kElevationToShadow[1],
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: kTxtField.copyWith(
                                        hintText:
                                            'Width (cm)'), //TODO:ENTER TAGs
                                  )),
                              Container(
                                  padding:
                                      EdgeInsets.only(left: 10.0, right: 10.0),
                                  width: width / 4,
                                  decoration: BoxDecoration(
                                    boxShadow: kElevationToShadow[1],
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: kTxtField.copyWith(
                                        hintText:
                                            'Depth (cm)'), //TODO:ENTER TAGs
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
                                    hintText:
                                        'Weight in Grammes'), //TODO:ENTER TAGs
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
                                keyboardType: TextInputType.text,
                                decoration: kTxtField.copyWith(
                                    hintText:
                                        'Enter material'), //TODO:ENTER TAGs
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
                            value: controller.status,
                            onChanged: (value) {
                              controller.updateMySwitchStatus(value);
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
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                    child: DropdownButtonHideUnderline(
                                  child: ButtonTheme(
                                    alignedDropdown: true,
                                    child: DropdownButton<String>(
                                      isDense: true,
                                      hint: new Text("Select country"),
                                      value: controller.myselection,
                                      onChanged: (String newValue) {
                                        controller
                                            .updateSelectdCountry(newValue);
                                      },
                                      items: controller.flags.map((Map map) {
                                        return DropdownMenuItem<String>(
                                          value: map["name"].toString(),
                                          child: Row(
                                            children: <Widget>[
                                              Image.asset(
                                                map["image"],
                                                width: 25,
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(left: 10),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Checkbox(
                                          value: controller.pay1,
                                          onChanged: (bool value) {
                                            controller
                                                .updateCashOnDelery(value);
                                          },
                                        ),
                                        Text(
                                          "Cash on delivery",
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Checkbox(
                                          value: controller.pay2,
                                          onChanged: (bool value) {
                                            controller.updateBankTranfer(value);
                                          },
                                        ),
                                        Text(
                                          "Bank Transfer",
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Checkbox(
                                          value: controller.pay3,
                                          onChanged: (bool value) {
                                            controller.updateMoneySave(value);
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Checkbox(
                                          value: controller.delv1,
                                          onChanged: (bool value) {
                                            controller.updateDHL(value);
                                          },
                                        ),
                                        Text("DHL"),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Checkbox(
                                          value: controller.delv2,
                                          onChanged: (bool value) {
                                            controller.updateAmanExpress(value);
                                          },
                                        ),
                                        Text(
                                          "Amana Express",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Checkbox(
                                          value: controller.delv3,
                                          onChanged: (bool value) {
                                            controller.updateChoronoPost(value);
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
            );
          }),
    );
  }
}
