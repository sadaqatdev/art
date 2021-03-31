import 'package:art/views/widgets/constant.dart';
import 'package:art/views/widgets/imagelist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:photo_view/photo_view.dart';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class visitorArtDetails extends StatefulWidget {
  @override
  _visitorArtDetailsState createState() => _visitorArtDetailsState();
}

class _visitorArtDetailsState extends State<visitorArtDetails> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    String artistName = "Ismail khan";
    String category = "Convas";
    String subCategory = "Sub Category 3";
    String country = "Chicha watni";
    String city = "TTs";
    String dimensions = "Height: 20 Width: 15 Depth: 10";
    String keyWords = "Drawing art Painting";
    String status = "No availability";
    String likes = "4554";
    String views = "42555";
    String ratings = "4.2";
    String description =
        "it has been the first i have done in some time now and with it if you only want to underline part of the text then you need to use Text.rich() (or a RichText widget) and break the string into TextSpans that you can add a style to ";
    String artName = "Abstract painting on convas";
    String price = "56565";
    String itemsLeft = "8";
    List<int> list = [
      1,
      2,
      3,
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFFF3D3A3A),
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text(
          "Product Details",
          style: TextStyle(fontSize: height / 50, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              //TODO:image Slider
              child: CarouselSlider(
                options: CarouselOptions(
                  //height: 20,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                ),
                items: imgList
                    .map((item) => Container(
                          child: Center(
                              child: PhotoView(
                            imageProvider: AssetImage(
                              item,
                            ),
                          )),
                        ))
                    .toList(),
              ),
            ),
            Divider(thickness: 1.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Icon(EvaIcons.heart,
                          color: Colors.red, size: height / 45),
                    ),
                    Text(
                      "$likes",
                    ), //TODO Likes

                    SizedBox(
                      width: width / 30,
                    ),
                    Icon(EvaIcons.eyeOutline,
                        color: Colors.black, size: height / 45),
                    Text("("),
                    Text(
                      "$views",
                    ),
                    Text(")"),
                    SizedBox(
                      width: width / 30,
                    ),

                    Icon(
                      EvaIcons.star,
                      color: Colors.orangeAccent,
                      size: height / 45,
                    ),
                    Text(
                      "$ratings",
                      style: TextStyle(color: Colors.orangeAccent),
                    ),
                    Text(
                      "(334)",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(
                  height: height / 40,
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "$artName", //TODO: Art Name
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "\$$price", //TODO:PRice
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: height / 50),
                              )
                            ]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white60,
                                      boxShadow: kElevationToShadow[6],
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    //TODO:Profile image
                                    child: CircleAvatar(
                                      radius: 15.0,
                                      backgroundImage:
                                          AssetImage("images/ava.png"),
                                    )),
                                SizedBox(
                                  width: width / 80,
                                ),
                                Text("$artistName", //TODO: User Name
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Text(
                              "$itemsLeft"
                              " Items Left", //TODO: Remaining Items
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(
                          height: height / 60,
                        ),
                        Text(
                          "Description",
                          style: CardTitleTxtStyle,
                        ),
                        SizedBox(
                          height: height / 90,
                        ),
                        Text(
                          '$description', //TODO: Show Story About art
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: height / 60,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: height / 80,
                        ),
                        Center(
                          child: Container(
                            width: width / 1.1,
                            // color: Colors.red,
                            child: Row(
                                // direction: Axis.horizontal,
                                children: [
                                  Wrap(
                                    direction: Axis.vertical,
                                    spacing: 10,
                                    children: [
                                      Text(
                                        'Artist Name:',
                                        style: TextStyle(
                                            // wordSpacing: 1,
                                            // letterSpacing: 1,
                                            color: Colors.black,
                                            fontSize: height / 60,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        'Category',
                                        style: TextStyle(
                                            // wordSpacing: 1,
                                            // letterSpacing: 1,
                                            color: Colors.black,
                                            fontSize: height / 60,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        'Sub Category',
                                        style: TextStyle(
                                            // wordSpacing: 1,
                                            // letterSpacing: 1,
                                            color: Colors.black,
                                            fontSize: height / 60,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        'Country',
                                        style: TextStyle(
                                            // wordSpacing: 1,
                                            // letterSpacing: 1,
                                            color: Colors.black,
                                            fontSize: height / 60,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        'City',
                                        style: TextStyle(
                                            // wordSpacing: 1,
                                            // letterSpacing: 1,
                                            color: Colors.black,
                                            fontSize: height / 60,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        'Dimensions',
                                        style: TextStyle(
                                            // wordSpacing: 1,
                                            // letterSpacing: 1,
                                            color: Colors.black,
                                            fontSize: height / 60,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        'Key words',
                                        style: TextStyle(
                                            // wordSpacing: 1,
                                            // letterSpacing: 1,
                                            color: Colors.black,
                                            fontSize: height / 60,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        'Status',
                                        style: TextStyle(
                                            // wordSpacing: 1,
                                            // letterSpacing: 1,
                                            color: Colors.black,
                                            fontSize: height / 60,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: width / 6,
                                  ),
                                  Expanded(
                                    child: Wrap(
                                      direction: Axis.vertical,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      alignment: WrapAlignment.start,
                                      runAlignment: WrapAlignment.start,
                                      spacing: 10,
                                      children: [
                                        Text(
                                          '$artistName',
                                          style: TextStyle(
                                            wordSpacing: 0.5,
                                            //  letterSpacing: 1,
                                            color: Color(0xff010817),
                                            fontSize: height / 60,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.end,
                                        ),
                                        Text(
                                          '$category',
                                          style: TextStyle(
                                            wordSpacing: 0.5,
                                            //  letterSpacing: 1,
                                            color: Color(0xff010817),
                                            fontSize: height / 60,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.end,
                                        ),
                                        Text(
                                          '$subCategory',
                                          style: TextStyle(
                                            wordSpacing: 0.5,
                                            //  letterSpacing: 1,
                                            color: Color(0xff010817),
                                            fontSize: height / 60,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.end,
                                        ),
                                        Text(
                                          '$country',
                                          style: TextStyle(
                                            wordSpacing: 0.5,
                                            //  letterSpacing: 1,
                                            color: Color(0xff010817),
                                            fontSize: height / 60,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.end,
                                        ),
                                        Text(
                                          '$city',
                                          style: TextStyle(
                                            wordSpacing: 0.5,
                                            //  letterSpacing: 1,
                                            color: Color(0xff010817),
                                            fontSize: height / 60,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.end,
                                        ),
                                        Text(
                                          '$dimensions',
                                          style: TextStyle(
                                            wordSpacing: 0.5,
                                            //  letterSpacing: 1,
                                            color: Color(0xff010817),
                                            fontSize: height / 60,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.end,
                                        ),
                                        Text(
                                          '$keyWords',
                                          style: TextStyle(
                                            wordSpacing: 0.5,
                                            //  letterSpacing: 1,
                                            color: Color(0xff010817),
                                            fontSize: height / 60,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.end,
                                        ),
                                        Text(
                                          '$status',
                                          style: TextStyle(
                                            wordSpacing: 0.5,
                                            //  letterSpacing: 1,
                                            color: Color(0xff010817),
                                            fontSize: height / 60,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.end,
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: height / 50),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
