import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {


  Button({@required this.onPressed, this.text,this.focusColor,this.disbaleColor,this.color});
  final GestureTapCallback onPressed;
  final Text text;
  final Color focusColor, disbaleColor,color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/1.2,
      height: MediaQuery.of(context).size.height/16,
      child: RaisedButton(
        elevation: 0,
        focusColor: focusColor,
        disabledColor: disbaleColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),

        ),
        color: color,
        textColor: Colors.white,
        padding: EdgeInsets.all(8.0),
        onPressed: onPressed,


        child: text,
      ),
    );
  }
}
// ignore: camel_case_types
class makeOfferButton extends StatelessWidget {


  makeOfferButton({@required this.onPressed, this.text,this.focusColor,this.disbaleColor,this.color});
  final GestureTapCallback onPressed;
  final Text text;
  final Color focusColor, disbaleColor,color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/2,
      height: MediaQuery.of(context).size.height/22,
      child: RaisedButton(
        elevation: 0,
        focusColor: focusColor,
        disabledColor: disbaleColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          // side: BorderSide(
          //   color: button1,
          // )
        ),
        color: color,
        textColor: Colors.white,
        padding: EdgeInsets.all(8.0),
        onPressed: onPressed,


        child: text,
      ),
    );
  }
}
// ignore: camel_case_types
class detailsButton extends StatelessWidget {


  detailsButton({@required this.onPressed, this.text,this.focusColor,this.disbaleColor,this.color});
  final GestureTapCallback onPressed;
  final Text text;
  final Color focusColor, disbaleColor,color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/6,
      height: MediaQuery.of(context).size.height/25,

      child: RaisedButton(
        elevation: 0,
        focusColor: focusColor,
        disabledColor: disbaleColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          // side: BorderSide(
          //   color: button1,
          // )
        ),
        color: Colors.black,
        textColor: Colors.white,
        padding: EdgeInsets.all(8.0),
        onPressed: onPressed,


        child: text,
      ),
    );
  }
}

