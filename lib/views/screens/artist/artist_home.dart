import 'package:art/controllers/artist_home_controller.dart';
import 'package:art/views/widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GetBuilder<ArtistHomeController>(
        init: ArtistHomeController(),
        builder: (controller) {
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
                      Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            // scrollDirection: Axis.vertical,
//
                            itemCount: controller.offer.getLength(),
                            itemBuilder: (context, index) {
                              return NewTile(
                                width: width,
                                height: height,
                                controller: controller,
                                index: index,
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ));
        });
  }
}

class NewTile extends StatelessWidget {
  const NewTile(
      {Key key,
      @required this.width,
      @required this.height,
      @required this.controller,
      @required this.index})
      : super(key: key);

  final double width;
  final double height;
  final ArtistHomeController controller;
  final index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.all(Radius.circular(12)),
            boxShadow: kElevationToShadow[4],
            border: Border.all(color: Colors.white24),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: <Widget>[
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.white60,
                            boxShadow: kElevationToShadow[6],
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: CircleAvatar(
                            radius: 20.0,
                            backgroundImage: AssetImage(
                              "${controller.offer.getImage(index)}", //TODO: Profile Image
                            ),
                          )),
                      SizedBox(width: width / 60),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${controller.offer.getName(index)}", //TODO: NAME
                            style: CardSubTitleStyle,
                            textAlign: TextAlign.center,
                          ),
                          // SizedBox(height: height/90),
                          Text(
                            "${controller.offer.getLocation(index)}", //TODO: LOCATION
                            style: CardSubTitleStyle1,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              InkWell(
                                  splashColor: Colors.red,
                                  highlightColor: Colors.red,
                                  child: FaIcon(
                                    FontAwesomeIcons.whatsapp,
                                    color: Colors.green,
                                    size: height / 50,
                                  ),
                                  onTap: () {}),
                              SizedBox(width: width / 80),
                              InkWell(
                                  splashColor: Colors.red,
                                  highlightColor: Colors.red,
                                  child: FaIcon(
                                    FontAwesomeIcons.phone,
                                    size: height / 50,
                                    color: Colors.blueGrey,
                                  ),
                                  onTap: () {}),
                              SizedBox(width: width / 80),
                              InkWell(
                                  splashColor: Colors.red,
                                  highlightColor: Colors.red,
                                  child: Icon(
                                    Icons.email,
                                    size: height / 50,
                                    color: Colors.redAccent[100],
                                  ),
                                  onTap: () {}),
                            ],
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
                                "${controller.offer.getDate(index)}",
                                style: TextStyle(
                                    fontSize: height / 65), //TODO: date
                              ),
                              SizedBox(
                                width: width / 70,
                              ),
                              Text(
                                "${controller.offer.getHours(index)}",
                                style: TextStyle(
                                    fontSize: height / 65), //ToDO:hours
                              )
                            ],
                          ),
                          // SizedBox(
                          //   height: height/80,
                          // ),

                          Row(
                            children: [
                              Text(
                                'offered you  ',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: height / 50,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "${controller.offer.getOffer(index)}", //TODO: OFFER
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: height / 40,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              // SizedBox(
              //   height: height/80,
              // ),
              Divider(
                thickness: 2.0,
              ),
              Container(
                width: width,
                child: Row(
                  children: [
                    Container(
                      height: height / 5,
                      width: width / 2.6,
                      child: Card(
                        color: Colors.grey.shade100,
                        elevation: 5,
                        //margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: height / 80,
                            ),
                            Text(
                                "${controller.offer.getArt(index)}", //TODO: Art NAme
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: height / 50,
                                    fontWeight: FontWeight.bold)
                                //CardTitleTxtStyle,
                                ),
                            SizedBox(
                              height: height / 80,
                            ),
                            Container(
                              height: height / 9,
                              // width: 160.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "${controller.offer.getArtImage(index)}", //TODO: ART IMAGE
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
                                "${controller.offer.getPrice(index)}", //TODO: PRICEE
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: height / 55,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width / 60,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                              "${controller.offer.getPayment(index)}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: height / 70), //TODO:Payment Method
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
                              "${controller.offer.getDelivery(index)}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: height / 70), //TODO:DElivery
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
                              child: Text("${controller.offer.getLocal(index)}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: height / 70) //TODO:location
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height / 80,
                        ),

                        Container(
                          height: height / 32,
                          child: RaisedButton(
                            onPressed: () {},
                            child: Text(
                              "Accept",
                              style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  fontSize: height / 65,
                                  color: Colors.white),
                            ),
                            // minWidth: 28.0,
                            // height: 26.0,
                            color: Colors.green.shade200,
                            splashColor: Colors.green,
                            shape: StadiumBorder(),
                          ),
                        ),
                        SizedBox(
                          height: height / 80,
                        ), //TODO: ACCEPT BUTTOn
                        Container(
                          height: height / 32,
                          child: RaisedButton(
                            onPressed: () {},
                            child: Text(
                              "Decline",
                              style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  fontSize: height / 65,
                                  color: Colors.white),
                            ),
                            color: Colors.orangeAccent.shade200,
                            splashColor: Colors.orange,
                            shape: StadiumBorder(),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: height / 40,
        ),
      ],
    );
  }
}
