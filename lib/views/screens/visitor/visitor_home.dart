import 'package:art/views/widgets/Chips.dart';
import 'package:art/views/widgets/card.dart';
import 'package:art/views/widgets/constant.dart';
import 'package:art/views/widgets/imagelist.dart';
import 'package:art/views/widgets/list_data.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import '../select_user.dart';

class VisitorHome extends StatefulWidget {
  @override
  _CustomerHomeState createState() => _CustomerHomeState();
}

class _CustomerHomeState extends State<VisitorHome> {
  TrendingData _data = TrendingData();

  List<String> _options = [
    "All",
    "Painting",
    "Textile",
    "Decoration",
  ];

  bool likeColor = false;
  Color _iconColor = Colors.grey;

  RoundCardData _round = RoundCardData();
  int _selectedIndex;
  bool _visible = false;
  double value = 0.0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // IconButton(
              //   icon: Icon(Icons.settings, color: Colors.grey,),
              //
              //   onPressed: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(builder: (context) => Settings()),
              //     );
              //   },
              // ),
              SizedBox(width: 14.0),
            ],
          ),
        ],
        backgroundColor: Colors.white,
        title: Image.asset(
          'images/logo.png',
          width: width / 5,
          height: height / 15,
          fit: BoxFit.cover,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: width / 1.1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height / 60,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SelectUser()),
                    );
                    // Navigator.pushNamed(context, "/selectUser");
                  },
                  child: Text(
                    "Login first",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: height / 50),
                  ),
                ),
                SizedBox(
                  height: height / 60,
                ),
                Text(
                  "Choose a topic",
                  style: TextStyle(
                      color: Colors.black,
                      // fontWeight: FontWeight.w500,
                      fontSize: height / 50),
                ),

                Container(
                  height: height / 13,
                  child: Center(child: _buildChips()),
                ),

                // CategoryChipHome(),

                Visibility(
                    visible: _visible,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Specify your interest", style: kTextStyleHeader),
                        SubCategoryChip(),
                      ],
                    )),
                Text(
                  "Top 10 Sellers",
                  style: TextStyle(
                      color: Colors.black,
                      // fontWeight: FontWeight.w500,
                      fontSize: height / 50),
                ),
                SizedBox(height: height / 60),
                Container(
                    height: height / 10,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _round.getLength(),
                        itemBuilder: (context, index) {
                          return
                              //TODO: User Profile pic and Name Round Card
                              GestureDetector(
                            // onTap: () {
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) =>
                            //           ArtistProfile_forCustomer(),
                            //     ),
                            //   );
                            // },
                            child: RoundCard(
                              img: "${_round.getImage(index)}",
                              txt: "${_round.getName(index)}",
                            ),
                          );
                        })),

                Text(
                  "Top 10 Sales",
                  style: TextStyle(
                      color: Colors.black,
                      // fontWeight: FontWeight.w500,
                      fontSize: height / 50),
                ),
                SizedBox(height: 10.0),
                Container(
                    width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height/3,
                    //TODO: Image Slider
                    child: CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                      ),
                      items: imgList
                          .map((item) => Container(
                                width: width,
                                child: Center(
                                    child: Stack(
                                  children: [
                                    Image.asset(
                                      item,
                                      fit: BoxFit.fill,
                                      width: MediaQuery.of(context).size.width,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              2,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8.0, top: 5.0),
                                      child: Container(
                                        color: Colors.grey.withOpacity(0.5),

                                        height: height / 22,
                                        width: width / 1.4,
                                        child: Center(
                                          child: Text(
                                            "Art",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ), //TODO: Art Name
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 5.0,
                                      left: 8.0,
                                      right: 8.0,
                                      child: Container(
                                        color: Colors.grey.withOpacity(0.5),

                                        height: height / 22,
                                        width: width / 1.35,
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    "152 \$",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    EvaIcons.star,
                                                    color: Colors.orangeAccent,
                                                  ),
                                                  Text(
                                                    "111",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors
                                                            .orangeAccent),
                                                  ),
                                                  Text(
                                                    "(323)",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ), //TODO: Art Name
                                      ),
                                    ),
                                  ],
                                )),
                              ))
                          .toList(),
                    )),

                SizedBox(
                  height: height / 60,
                ),
                Text(
                  "Suggested for you",
                  style: TextStyle(
                      color: Colors.black,
                      // fontWeight: FontWeight.w500,
                      fontSize: height / 50),
                ),
                SizedBox(height: height / 60),

                //TODO: Grid view of Art work
                Container(
                  child: GridView.count(
                    childAspectRatio: (3 / 4),
                    crossAxisCount: 2,
                    physics: ScrollPhysics(),
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                    shrinkWrap: true,
                    children: List.generate(
                      4,
                      (index) {
                        return Container(
                          height: 400.0,
                          width: 80.0,
                          child: Card(
                            color: Colors.grey.shade100,
                            elevation: 5,
                            //margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  //margin: EdgeInsets.only(bottom: 8.0),
                                  height: height / 6, width: width / 2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12.0),
                                      topRight: Radius.circular(12.0),
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "imageSlide/p1.jpg"), //TODO: ART IMAGE
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: height / 80,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      EvaIcons.heart,
                                      size: height / 45,
                                      color: Colors.red,
                                    ),
                                    Text(
                                      "5", //TODO: likes
                                      style: TextStyle(fontSize: 15.0),
                                    ),
                                    SizedBox(
                                      width: width / 80,
                                    ),
                                    Icon(
                                      EvaIcons.eye,
                                      size: height / 45,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      "33", //TODO: VIEWS
                                      style: TextStyle(fontSize: 15.0),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Icon(
                                      EvaIcons.messageCircle,
                                      size: height / 45,
                                      color: Colors.orangeAccent,
                                    ),
                                    Text(
                                      "6", //TODO:offers
                                      style: TextStyle(fontSize: 15.0),
                                    ),
                                  ],
                                ),
                                SizedBox(height: height / 70),
                                Text(
                                  "The Canvas", //TODO: ART NAme
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: height / 70),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "hello Word", //TODO: Creator Name
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    //
                  ),
                ),

                SizedBox(
                  height: height / 60,
                ),
                Text(
                  "Trending products for last 30 days",
                  style: kTextStyleHeader,
                ),
                SizedBox(height: height / 60),
                Container(
                  // height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                      // physics: ClampingScrollPhysics(),
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      // scrollDirection: Axis.vertical,
//
//                           //TODO:
                      itemCount: _data.getLength(),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width,
                                // margin: const EdgeInsets.all(30.0),
                                child: Card(
                                  color: Colors.grey.shade100,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "${_data.getArtName(index)}", //TODO: Art Name
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "${_data.getPrice(index)}", //TODO:PRice
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20.0),
                                              )
                                            ]),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.white60,
                                                      boxShadow:
                                                          kElevationToShadow[6],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.0),
                                                    ),
                                                    //TODO:Profile image
                                                    child: CircleAvatar(
                                                      radius: 15.0,
                                                      backgroundImage: AssetImage(
                                                          "${_data.getImage(index)}"),
                                                    )),
                                                SizedBox(
                                                  width: 5.0,
                                                ),
                                                Text(
                                                    "${_data.getName(index)}", //TODO: User Name
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                SizedBox(
                                                  width: 10.0,
                                                ),
                                                Icon(
                                                  EvaIcons.star,
                                                  color: Colors.orangeAccent,
                                                  size: 14,
                                                ),
                                                Text(
                                                  "${_data.getRating(index)}",
                                                  style: TextStyle(
                                                      color:
                                                          Colors.orangeAccent),
                                                ),
                                                Text(
                                                  "(334)",
                                                  style: TextStyle(
                                                      color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "${_data.getItem(index)}"
                                                  " Items Left", //TODO: Remaining Items
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5.0,
                                        ),

                                        GestureDetector(
                                          onTap: () {
                                            // Navigator.push(
                                            //   context,
                                            //   MaterialPageRoute(
                                            //     builder: (context) =>
                                            //         ArtDetail(),
                                            //   ),
                                            // );
                                          },
                                          child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              //TODO: Image Slider
                                              child: CarouselSlider(
                                                options: CarouselOptions(
                                                  autoPlay: true,
                                                  aspectRatio: 2.0,
                                                  enlargeCenterPage: true,
                                                ),
                                                items: imgList
                                                    .map((item) => Container(
                                                          child: Center(
                                                              child: Stack(
                                                            children: [
                                                              Image.asset(
                                                                item,
                                                                fit: BoxFit
                                                                    .cover,
                                                                width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                              ),
                                                              Positioned(
                                                                right: 12,
                                                                top: 12,
                                                                child:
                                                                    Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          borderRadius:
                                                                              BorderRadius.circular(12),
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsets.only(
                                                                              left: 8.0,
                                                                              right: 8,
                                                                              top: 4,
                                                                              bottom: 4),
                                                                          child:
                                                                              Text(imgList.indexOf(item).toString() + " / 3"),
                                                                        )),
                                                              ),
                                                            ],
                                                          )),
                                                        ))
                                                    .toList(),
                                              )),
                                        ),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        // Divider(
                                        //   thickness: 2.0,
                                        // ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  EvaIcons.eyeOutline,
                                                  color: Colors.black,
                                                ),
                                                Text("("),
                                                Text(
                                                  "${_data.getView(index)}",
                                                ),
                                                Text(")"),
                                                SizedBox(
                                                  width: 15.0,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )),
                            SizedBox(
                              height: 15.0,
                            ),
                          ],
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildChips() {
    List<Widget> chips = new List();

    for (int i = 0; i < _options.length; i++) {
      ChoiceChip choiceChip = ChoiceChip(
        selected: _selectedIndex == i,
        label: Text(_options[i], style: TextStyle(color: Colors.white)),
        elevation: 5,
        pressElevation: 5,
        shadowColor: Colors.teal,
        backgroundColor: Colors.black54,
        selectedColor: Colors.blue,
        onSelected: (bool selected) {
          setState(() {
            if (selected) {
              _selectedIndex = i;
              _visible = true;
            }
          });
        },
      );

      chips.add(Padding(
          padding: EdgeInsets.symmetric(horizontal: 10), child: choiceChip));
    }

    return ListView(
      // This next line does the trick.
      scrollDirection: Axis.horizontal,
      children: chips,
    );
  }
}
