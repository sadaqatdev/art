import 'package:art/views/widgets/constant.dart';
import 'package:art/views/widgets/imagelist.dart';
import 'package:art/views/widgets/list_data.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import 'review.dart';

class Review extends StatefulWidget {
  @override
  _ReviewState createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  ReviewData _review = ReviewData();
  @override
  Widget build(BuildContext context) {
    List<int> list = [
      1,
      2,
      3,
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFFF3D3A3A),
        title: Text("Review"),
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
              //TODO: image Slider
              child: CarouselSlider(
                options: CarouselOptions(
                  //height: 20,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                ),
                items: imgList
                    .map((item) => Container(
                          child: Center(
                              child: Image.asset(
                            item,
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width,
                          )),
                        ))
                    .toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20.0, bottom: 20.0, top: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          EvaIcons.heart,
                          size: 15.0,
                          color: Colors.red,
                        ),
                        Text(
                          "5", //TODO: SHOW LIKES
                          style: TextStyle(fontSize: 15.0),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Icon(
                          EvaIcons.eye,
                          size: 15.0,
                          color: Colors.blue,
                        ),
                        Text(
                          "33", //TODO:SHOW VIEWS
                          style: TextStyle(fontSize: 15.0),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Icon(
                          EvaIcons.messageCircle,
                          size: 15.0,
                          color: Colors.orangeAccent,
                        ),
                        Text(
                          "6", //TODO:SHOW OFFERS
                          style: TextStyle(fontSize: 15.0),
                        ),
                        SizedBox(
                          width: 140.0,
                        ),
                        InkWell(
                            splashColor: Colors.grey[400],
                            highlightColor: Colors.grey[400],
                            child: Text(
                              "Write Review",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18.0),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => WriteReview(),
                                ),
                              );
                            }),
                      ],
                    ),
                    Divider(thickness: 1.0),
                    Text(
                      "Review",
                      style: kTextStyleHeader,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      // width: 300,
                      child: ListView.builder(
                          // scrollDirection: Axis.horizontal,
                          itemCount: _review.getLength(),
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage: AssetImage(
                                      "${_review.getImage(index)}",
                                    ),
                                    radius: 30.0,
                                  ),
                                  title: Text(
                                    "${_review.getName(index)}",
                                    style: kTextStyleHeader,
                                  ),

                                  //TODO:Review Message/ text
                                  subtitle: Column(
                                    children: [
                                      Text(
                                        "${_review.getMessage(index)}",
                                        textAlign: TextAlign.justify,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Divider(
                                  thickness: 2,
                                ),
                              ],
                            );
                          }),
                    ),
                  ]),
            ),
            Divider(
              thickness: 2,
            )
          ],
        ),
      ),
    );
  }
}
