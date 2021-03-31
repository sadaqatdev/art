import 'package:art/views/widgets/constant.dart';
import 'package:flutter/material.dart';

// TODO: ROUND CARD
class RoundCard extends StatelessWidget {
  const RoundCard({this.txt, this.img});
  final String txt;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      height: 40.0,
      child: Column(
        children: <Widget>[
          Container(
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white60,
                  boxShadow: kElevationToShadow[6],
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(img),
                )),
          ),
          SizedBox(height: 5.0),
          Text(
            txt,
            style: CardSubTitleStyle,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
