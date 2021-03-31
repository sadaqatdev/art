import 'package:art/views/widgets/button.dart';
import 'package:art/views/widgets/colors.dart';
import 'package:art/views/widgets/constant.dart';
import 'package:art/views/widgets/imagelist.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class WriteReview extends StatefulWidget {
  @override
  _WriteReviewState createState() => _WriteReviewState();
}

class _WriteReviewState extends State<WriteReview> {
  //****
  final _ratingController = TextEditingController();
  double _rating;

  IconData _selectedIcon;

  @override
  void initState() {
    _ratingController.text = '3.0';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //****
    List<int> list = [
      1,
      2,
      3,
    ];
    return Builder(
      builder: (context) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFFFF3D3A3A),
          title: Text("Result"),
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
                //TODO: Slider
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
                padding: const EdgeInsets.all(20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Ahsan",
                                style: CardTitleTxtStyle,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Price: 155 \$ ", style: CardTitleTxtStyle),
                            ],
                          ),
                        ],
                      ),
                      Divider(thickness: 1.0),

                      //TODO:RATING STARS
                      Center(
                        child: RatingBar.builder(
                          initialRating: 2,
                          minRating: 0,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          unratedColor: Colors.amber.withAlpha(50),
                          itemCount: 5,
                          itemSize: 50.0,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            _selectedIcon ?? Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            setState(() {
                              _rating = rating;
                            });
                          },
                          updateOnDrag: true,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Center(
                        child: _rating != null
                            ? Text(
                                'Rating: $_rating',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            : Container(),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text('Message', style: kCategoryText),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20.0, right: 20.0),
                        width: 330.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          boxShadow: kElevationToShadow[3],
                        ),

                        //*** Video UPLOAD DESCRIPTION
                        child: TextField(
                          maxLines: null,
                          minLines: null,
                          expands: true,
                          decoration: kTxtField.copyWith(hintText: 'Type Here'),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      //TODO: SUBMIT BUTTON
                      Button(
                        text: Text(
                          "Submit",
                          style: TextStyle(),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, "/naviga");
                        },
                        color: buttonBackgroundColor,
                        focusColor: buttonColor1,
                        disbaleColor: buttonColor2,
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Select Icon',
        style: TextStyle(
          fontWeight: FontWeight.w300,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      titlePadding: EdgeInsets.all(12.0),
      contentPadding: EdgeInsets.all(0),
      content: Wrap(
        children: [
          _iconButton(context, Icons.star),
        ],
      ),
    );
  }

  Widget _iconButton(BuildContext context, IconData icon) => IconButton(
        icon: Icon(icon),
        onPressed: () => Navigator.pop(context, icon),
        splashColor: Colors.amberAccent,
        color: Colors.amber,
      );
}
