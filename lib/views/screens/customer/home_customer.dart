import 'package:art/controllers/customer_home_controller.dart';
import 'package:art/views/screens/customer/art_detail.dart';
import 'package:art/views/screens/customer/settings.dart';
import 'package:art/views/widgets/Chips.dart';
import 'package:art/views/widgets/card.dart';
import 'package:art/views/widgets/constant.dart';
import 'package:art/views/widgets/imagelist.dart';
import 'package:art/views/widgets/list_data.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:get/get.dart';
import '../artist_profile_for_customer.dart';

class CustomerHome extends StatelessWidget {
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
              IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.grey,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Settings()),
                  );
                },
              ),
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
        child: GetBuilder<CustomerHomeController>(
            init: CustomerHomeController(),
            builder: (controller) {
              return Container(
                width: width / 1.1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height / 60,
                    ),
                    Text(
                      "Choose a topic",
                      style:
                          TextStyle(color: Colors.black, fontSize: height / 50),
                    ),

                    Container(
                      height: height / 13,
                      child: Center(
                          child: _buildChips(
                        controller,
                      )),
                    ),

                    // CategoryChipHome(),

                    Visibility(
                        visible: controller.visible,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Specify your interest",
                                style: kTextStyleHeader),
                            SubCategoryChip(),
                          ],
                        )),
                    Text(
                      "Top 10 Sellers",
                      style:
                          TextStyle(color: Colors.black, fontSize: height / 50),
                    ),
                    SizedBox(height: height / 60),
                    Container(
                        height: height / 7,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: controller.round.getLength(),
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          ArtistProfile_forCustomer(),
                                    ),
                                  );
                                },
                                child: RoundCard(
                                  img: "${controller.round.getImage(index)}",
                                  txt: "${controller.round.getName(index)}",
                                ),
                              );
                            })),

                    Text(
                      "Top 10 Sales",
                      style:
                          TextStyle(color: Colors.black, fontSize: height / 50),
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
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
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
                                                    fontWeight:
                                                        FontWeight.bold),
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
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
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        EvaIcons.star,
                                                        color:
                                                            Colors.orangeAccent,
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
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
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
                      style:
                          TextStyle(color: Colors.black, fontSize: height / 50),
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
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: height / 6,
                                      width: width / 2,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                          itemCount: controller.data.getLength(),
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
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "${controller.data.getArtName(index)}", //TODO: Art Name
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    "${controller.data.getPrice(index)}", //TODO:PRice
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20.0),
                                                  )
                                                ]),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white60,
                                                          boxShadow:
                                                              kElevationToShadow[
                                                                  6],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30.0),
                                                        ),
                                                        //TODO:Profile image
                                                        child: CircleAvatar(
                                                          radius: 15.0,
                                                          backgroundImage:
                                                              AssetImage(
                                                                  "${controller.data.getImage(index)}"),
                                                        )),
                                                    SizedBox(
                                                      width: 5.0,
                                                    ),
                                                    Text(
                                                        "${controller.data.getName(index)}", //TODO: User Name
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                    SizedBox(
                                                      width: 10.0,
                                                    ),
                                                    Icon(
                                                      EvaIcons.star,
                                                      color:
                                                          Colors.orangeAccent,
                                                      size: 14,
                                                    ),
                                                    Text(
                                                      "${controller.data.getRating(index)}",
                                                      style: TextStyle(
                                                          color: Colors
                                                              .orangeAccent),
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
                                                      "${controller.data.getItem(index)}"
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
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        ArtDetail(),
                                                  ),
                                                );
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
                                                        .map(
                                                            (item) => Container(
                                                                  child: Center(
                                                                      child:
                                                                          Stack(
                                                                    children: [
                                                                      Image
                                                                          .asset(
                                                                        item,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                        width: MediaQuery.of(context)
                                                                            .size
                                                                            .width,
                                                                      ),
                                                                      // Positioned(
                                                                      //     child: imgList
                                                                      //                 .indexOf(item) ==
                                                                      //             0
                                                                      //         ? IconButton(
                                                                      //             icon:
                                                                      //                 Icon(
                                                                      //               EvaIcons.heartOutline,
                                                                      //               size:
                                                                      //                   40.0,
                                                                      //               color:
                                                                      //                   Colors.white,
                                                                      //             ),
                                                                      //           )
                                                                      //         : Container()),
                                                                      Positioned(
                                                                        right:
                                                                            12,
                                                                        top: 12,
                                                                        child: Container(
                                                                            decoration: BoxDecoration(
                                                                              borderRadius: BorderRadius.circular(12),
                                                                              color: Colors.white,
                                                                            ),
                                                                            child: Padding(
                                                                              padding: const EdgeInsets.only(left: 8.0, right: 8, top: 4, bottom: 4),
                                                                              child: Text(imgList.indexOf(item).toString() + " / 3"),
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
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    GestureDetector(
                                                      onTap: () {
                                                        controller
                                                            .updateColor();
                                                      },
                                                      child: Icon(
                                                          EvaIcons.heart,
                                                          color: controller
                                                              .iconColor),
                                                    ),
                                                    Text(
                                                      "${controller.data.getLikes(index)}",
                                                    ), //TODO Likes

                                                    SizedBox(
                                                      width: 10.0,
                                                    ),
                                                    Icon(
                                                      EvaIcons.eyeOutline,
                                                      color: Colors.black,
                                                    ),
                                                    Text("("),
                                                    Text(
                                                      "${controller.data.getView(index)}",
                                                    ),
                                                    Text(")"),
                                                    SizedBox(
                                                      width: 15.0,
                                                    ),
                                                    InkWell(
                                                        splashColor:
                                                            Colors.grey[400],
                                                        highlightColor:
                                                            Colors.grey[400],
                                                        child: Image.asset(
                                                          "images/instaShare.png",
                                                          color: Colors.black,
                                                          scale: 50,
                                                          // EvaIcons.share,
                                                          // color: Colors.black54,
                                                          // size: 20.0,
                                                        ),
                                                        onTap: () {})
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
              );
            }),
      ),
    );
  }

  Widget _buildChips(CustomerHomeController controller) {
    List<Widget> chips = new List();

    for (int i = 0; i < controller.options.length; i++) {
      ChoiceChip choiceChip = ChoiceChip(
        selected: controller.selectedIndex == i,
        label:
            Text(controller.options[i], style: TextStyle(color: Colors.white)),
        elevation: 5,
        pressElevation: 5,
        shadowColor: Colors.teal,
        backgroundColor: Colors.black54,
        selectedColor: Colors.blue,
        onSelected: (bool selected) {
          controller.updateSelectedIndex(selected, i);
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
