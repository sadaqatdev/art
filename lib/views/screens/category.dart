import 'package:art/views/widgets/constant.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  TextEditingController modeController = TextEditingController();
  int _radioValue = 0;

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 0:
          break;
        case 1:
          break;
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Color(0xFFFF3D3A3A),
        title: Text("Your Interests"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Choose your interest",
                  style: kTextSpanGray,
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),

            //*********Buyer List Tile
            ListTile(
              tileColor: Colors.grey.shade100,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Buy Art",
                    style: kTextStyleHeader,
                  ),
                  Radio(
                    //TODO: BUYER Radio Button
                    value: 0,
                    groupValue: _radioValue,
                    onChanged: _handleRadioValueChange,
                  ),
                ],
              ),
              subtitle: Text("i want to buy art on ArtForYou"),
            ),

            SizedBox(
              height: 8.0,
            ),
            //*********Seller List Tile
            ListTile(
              tileColor: Colors.grey.shade100,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sell Art",
                    style: kTextStyleHeader,
                  ),
                  Radio(
                    //TODO: Seller Radio Button
                    value: 1,
                    groupValue: _radioValue,
                    onChanged: _handleRadioValueChange,
                  ),
                ],
              ),
              subtitle: Text("i want to Sell art on ArtForYou"),
            ),
            SizedBox(
              height: 8.0,
            ),
            //*********Browser List Tile
            ListTile(
              tileColor: Colors.grey.shade100,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Browser Art",
                    style: kTextStyleHeader,
                  ),
                  Radio(
                    //TODO: Seller Radio Button
                    value: 2,
                    groupValue: _radioValue,
                    onChanged: _handleRadioValueChange,
                  ),
                ],
              ),
              subtitle: Text("i want to browser art on ArtForYou"),
            ),
          ],
        ),
      ),
    );
  }
}
