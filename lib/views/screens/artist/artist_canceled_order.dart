import 'package:art/controllers/cancel_order_controller.dart';
import 'package:art/views/widgets/constant.dart';
import 'package:art/views/widgets/list_data.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class CancelOrder extends StatefulWidget {
  @override
  _CancelOrderState createState() => _CancelOrderState();
}

class _CancelOrderState extends State<CancelOrder> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
                  // height: MediaQuery.of(context).size.height,
                  child: GetBuilder<CancelOrderController>(
                      init: CancelOrderController(),
                      builder: (controller) {
                        return ListView.builder(
                            shrinkWrap: true,
                            // scrollDirection: Axis.vertical,
//
                            itemCount: controller.offer.getLength(),
                            itemBuilder: (context, index) {
                              return NewTile(
                                offer: controller.offer,
                                index: index,
                              );
                            });
                      }),
                ),
              ],
            ),
          ),
        ));
  }
}

class NewTile extends StatelessWidget {
  const NewTile({
    Key key,
    @required this.offer,
    this.index,
  }) : super(key: key);

  final OfferData offer;
  final index;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
                              "${offer.getImage(index)}", //TODO: Profile Image
                            ),
                          )),
                      SizedBox(width: width / 60),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${offer.getName(index)}", //TODO: NAME
                            style: CardSubTitleStyle,
                            textAlign: TextAlign.center,
                          ),
                          // SizedBox(height: height/90),
                          Text(
                            "${offer.getLocation(index)}", //TODO: LOCATION
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
                                "${offer.getDate(index)}",
                                style: TextStyle(
                                    fontSize: height / 65), //TODO: date
                              ),
                              SizedBox(
                                width: width / 70,
                              ),
                              Text(
                                "${offer.getHours(index)}",
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
                                "${offer.getOffer(index)}", //TODO: OFFER
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
                            Text("${offer.getArt(index)}", //TODO: Art NAme
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
                                    "${offer.getArtImage(index)}", //TODO: ART IMAGE
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
                            Text("${offer.getPrice(index)}", //TODO: PRICEE
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: height / 55,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width / 80,
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
                              "${offer.getPayment(index)}",
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
                              "${offer.getDelivery(index)}",
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
                              child: Text("${offer.getLocal(index)}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: height / 70) //TODO:location
                                  ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height / 80,
              ),
              Container(
                width: width,
                child: Column(
                  children: [
                    Text(
                      "You declined this offer on  12/6/2021",
                      style: TextStyle(
                          fontSize: height / 60,
                          color: Colors.red,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
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
