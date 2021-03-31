import 'package:art/views/widgets/constant.dart';
import 'package:art/views/widgets/list_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:art/controllers/offers_sent_controller.dart';

class SentOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            width: width / 1.05,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                GetBuilder<OfferSentController>(
                    init: OfferSentController(),
                    builder: (offerController) {
                      return Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: offerController.offer.getLength(),
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                      boxShadow: kElevationToShadow[4],
                                      border: Border.all(color: Colors.white24),
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: <Widget>[
                                                Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.white60,
                                                      boxShadow:
                                                          kElevationToShadow[6],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25.0),
                                                    ),
                                                    child: CircleAvatar(
                                                      radius: 20.0,
                                                      backgroundImage:
                                                          AssetImage(
                                                        "${offerController.offer.getImage(index)}", //TODO: Profile Image
                                                      ),
                                                    )),
                                                SizedBox(width: 5.0),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "${offerController.offer.getName(index)}", //TODO: NAME
                                                      style: CardSubTitleStyle,
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                    Text(
                                                      "${offerController.offer.getLocation(index)}", //TODO: LOCATION
                                                      style: CardSubTitleStyle1,
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Icon(
                                                          EvaIcons.clock,
                                                          color: Colors.grey,
                                                          size: height / 45,
                                                        ),
                                                        Text(
                                                          "${offerController.offer.getDate(index)}",
                                                          style: TextStyle(
                                                              fontSize: height /
                                                                  65), //TODO: date
                                                        ),
                                                        SizedBox(
                                                          width: width / 70,
                                                        ),
                                                        Text(
                                                          "${offerController.offer.getHours(index)}",
                                                          style: TextStyle(
                                                              fontSize: height /
                                                                  65), //ToDO:hours
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          'Your Offer',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize:
                                                                  height / 50,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        Text(
                                                          "${offerController.offer.getOffer(index)}", //TODO: OFFER
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize:
                                                                  height / 40,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        Divider(
                                          thickness: 2.0,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: height / 5,
                                              width: width / 2.6,
                                              child: Card(
                                                color: Colors.grey.shade100,
                                                elevation: 5,
                                                //margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Column(
                                                  children: <Widget>[
                                                    SizedBox(
                                                      height: height / 80,
                                                    ),
                                                    Text(
                                                        "${offerController.offer.getArt(index)}", //TODO: Art NAme
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize:
                                                                height / 50,
                                                            fontWeight:
                                                                FontWeight.bold)
                                                        //CardTitleTxtStyle,
                                                        ),
                                                    SizedBox(
                                                      height: height / 80,
                                                    ),
                                                    Container(
                                                      height: height / 9,
                                                      // width: 160.0,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.only(),
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                            "${offerController.offer.getArtImage(index)}", //TODO: ART IMAGE
                                                          ),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    // SizedBox(
                                                    //   height: height/,
                                                    // ),
                                                    SizedBox(
                                                      height: 2,
                                                    ),
                                                    Text(
                                                        "${offerController.offer.getPrice(index)}", //TODO: PRICEE
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize:
                                                                height / 55,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: width / 80,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.payment_outlined,
                                                      size: height / 45,
                                                    ),
                                                    SizedBox(
                                                      width: width / 60,
                                                    ),
                                                    Text(
                                                      "${offerController.offer.getPayment(index)}",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: height /
                                                              70), //TODO:Payment Method
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Row(
                                                  children: [
                                                    FaIcon(
                                                      FontAwesomeIcons.bus,
                                                      size: height / 45,
                                                    ),
                                                    SizedBox(
                                                      width: width / 60,
                                                    ),
                                                    Text(
                                                      "${offerController.offer.getDelivery(index)}",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: height /
                                                              70), //TODO:DElivery
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.location_on,
                                                      size: height / 45,
                                                    ),
                                                    SizedBox(
                                                      width: width / 60,
                                                    ),
                                                    Container(
                                                      width: width / 3,
                                                      child: Text(
                                                          "${offerController.offer.getLocal(index)}",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: height /
                                                                  70) //TODO:location
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: height / 80,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Offer Sent", //TODO:Status Offer sent
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize:
                                                              height / 55),
                                                    ),
                                                    SizedBox(
                                                      width: width / 80,
                                                    ),
                                                    Container(
                                                      height: height / 30,
                                                      width: width / 3.4,
                                                      // ignore: deprecated_member_use
                                                      child: RaisedButton(
                                                        onPressed: () {},
                                                        child: Text(
                                                          "Cancel offer",
                                                          style: TextStyle(
                                                              fontSize:
                                                                  height / 60,
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                        color: Colors
                                                            .green.shade200,
                                                        splashColor:
                                                            Colors.green,
                                                        shape: StadiumBorder(),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: height / 40,
                                  ),
                                ],
                              );
                            }),
                      );
                    }),
              ],
            ),
          ),
        ));
  }
}
