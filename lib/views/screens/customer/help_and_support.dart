
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HelpAndSupport extends StatefulWidget {
  @override
  _HelpAndSupportState createState() => _HelpAndSupportState();
}

class _HelpAndSupportState extends State<HelpAndSupport> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF3D3A3A),
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text(
          "Help and Support",
          style: TextStyle(fontSize: height / 50, color: Colors.white),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Container(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height / 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left:15.0),
              child: Text(
                "Help and Support",
                style: TextStyle(fontSize: height / 50, color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: height / 80,
            ),
            Center(
              child: Container(
                width: width/1.1,

                child: Text('Lorem Ipsum is simply dummy text of the printing  and typesetting industry.'
                    ' Lorem Ipsum has been the industries standard dummy text ever since the '
                    '1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. '
                    ' It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.'
                    'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,'
                    'and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', style: TextStyle(
                    fontSize: height/60, fontWeight: FontWeight.w400, color: Colors.black, letterSpacing: 1.0, height: 1.5
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
