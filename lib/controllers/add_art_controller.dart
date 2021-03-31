import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddArtController extends GetxController {
  RangeValues values = RangeValues(200, 2000);
  RangeLabels labels = RangeLabels('200', "2000");

  List<String> country = ['X', 'y', 'Z', 'D']; //TODO: Country LIST

  String selectedCountry;

  //**
  bool status1 = false;
  bool status2 = false;
  bool status3 = false;

  Color screenPickerColor;

  bool isDark;

  List<String> category = [
    'Category 1',
    'Category 2',
    'Category 3',
    'Category 4',
  ]; //TODO: Country LIST

  String selectedCategory;

  List<String> subCountry = [
    'Sub Category 1',
    'Sub Category 2',
    'Sub Category 3',
    'Sub Category 4',
  ]; //TODO: Country LIST

  String selectedSubCountry;

  @override
  void onInit() {
    screenPickerColor = Colors.blue;
    isDark = true;
    super.onInit();
  }

  updateCategory(newValue) {
    selectedCategory = newValue;
    update();
  }

  updateSubCategory(newValue) {
    selectedSubCountry = newValue;
    update();
  }

  updateCountry(newValue) {
    selectedCountry = newValue;
    update();
  }

  updateCity(newValue) {
    selectedCountry = newValue;
    update();
  }

  updatePrice(value) {
    values = value;
    labels = RangeLabels("RS.${value.start.toInt().toString()}",
        "RS.${value.end.toInt().toString()}");
    update();
  }

  updateColor(color) {
    screenPickerColor = color;
    update();
  }

  updateAvalibility(value) {
    status1 = value;
    update();
  }

  updateActive(value) {
    status1 = value;
    update();
  }

  updateSold(value) {
    status3 = value;
    update();
  }
}
