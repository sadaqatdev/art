import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustommerSearchController extends GetxController {
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

  String myselection;

  List<Map> flags = [
    {"id": 0, "image": "flags/morocco.png", "name": 'Morocco'},
    {"id": 1, "image": "flags/algeria.png", "name": 'Algeria'},
    {"id": 2, "image": "flags/libya.png", "name": 'Libya'},
    {"id": 3, "image": "flags/tunisia.png", "name": 'Tunisia'},
    {"id": 4, "image": "flags/egypt.png", "name": 'Egypt'},
  ];

  TextEditingController categoryTxt = new TextEditingController();

  bool isDark;
  bool status = false;
  bool valuefirst = false;
  bool valuesecond = false;
  int _value = 1;

  bool pay1 = false;
  bool pay2 = false;
  bool pay3 = false;

  bool delv1 = false;
  bool delv2 = false;
  bool delv3 = false;

//Select Artist
  List<String> artist = ['A', 'B', 'C', 'D']; //TODO: ARTIST LIST
  String selectedArtist;

  //Select Country
  List<String> country = ['X', 'y', 'Z', 'D']; //TODO: Country LIST
  String selectedCountry;

  @override
  void onInit() {
    screenPickerColor = Colors.blue;
    isDark = true;
    super.onInit();
  }

  void updateCountry(conuntry) {
    selectedCountry = conuntry;
    update();
  }

  void updatePriceRange(value) {
    values = value;
    labels = RangeLabels("RS.${value.start.toInt().toString()}",
        "RS.${value.end.toInt().toString()}");
    update();
  }

  void updateColor(color) {
    screenPickerColor = color;
    update();
  }

  void updateMySwitchStatus(value) {
    status = value;
    update();
  }

  void updateSelectdCountry(newValue) {
    myselection = newValue;
    update();
  }

  void updateChoronoPost(value) {
    delv3 = value;
    update();
  }

  void updateAmanExpress(value) {
    delv2 = value;
    update();
  }

  void updateDHL(value) {
    delv1 = value;
    update();
  }

  void updateMoneySave(value) {
    pay3 = value;
    update();
  }

  void updateBankTranfer(value) {
    pay2 = value;
    update();
  }

  void updateCashOnDelery(value) {
    pay1 = value;
    update();
  }
}
