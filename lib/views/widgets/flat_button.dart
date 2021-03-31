import 'package:flutter/material.dart';

class FilterFlatButton extends StatelessWidget {
  FilterFlatButton(
      {this.ButtonTitle,
      this.onpressed,
      this.size,
      this.colour,
      this.TxtColor});
  final Color colour;
  final String ButtonTitle;
  final Function onpressed;
  final Color TxtColor;
  final double size;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: colour,
      splashColor: Colors.grey.shade200,
      minWidth: 10.0,
      height: 20.0,
      onPressed: onpressed, //TODO: BEST SELLING BUTTON
      child: Text(
        ButtonTitle,
        style: TextStyle(color: TxtColor, fontSize: size),
      ),
    );
  }
}
