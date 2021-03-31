import 'package:art/views/widgets/constant.dart';
import 'package:flutter/material.dart';

class OrderDetail extends StatefulWidget {
  @override
  _OrderDetailState createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFFF3D3A3A),
        title: Text("Order Detail"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: Container(
                  height: 120.0,
                  child: (Row(
                    children: [
                      Image(
                        image: AssetImage('images/ava.png'), //TODO: Logo Image
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //TODO: Art Name
                          Text(
                            "Painting with heart",
                            style: TextStyle(
                                color: Color(0xFFFF1D1ABC),
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.grey,
                                size: 15.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text("Location"), //TODO: Location
                              SizedBox(
                                width: 10.0,
                              ),
                              SizedBox(
                                width: 50.0,
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                            ],
                          ),
                          //:
                          Text("Total: 1513\$"), //TODO: PRICE
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 25.0,
                                width: 80.0,
                                decoration: BoxDecoration(
                                  boxShadow: kElevationToShadow[1],
                                  borderRadius: BorderRadius.circular(40),
                                  color: (Text == 'sold')
                                      ? Colors.blue
                                      : Colors.red,
                                ),
                                child: Center(
                                  child: Text(
                                    "Available",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              //:TODO: REMOVE offer Button
                              FlatButton(
                                onPressed: () {},
                                splashColor: Colors.grey.shade200,
                                minWidth: 20.0,
                                height: 20.0,
                                child: Text("Remove Offer",
                                    style: TextStyle(
                                      fontSize: 12,
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )),
                ),
              ),
              SizedBox(height: 5.0),
              Text("Description", style: CardTitleTxtStyle),
              SizedBox(height: 5.0),
              Text(
                "hello Let's face it. When you're building an app which you plan to release to the public, having it in just one language isn't going to cut it. While English is definitely one of the most spoken languages throughout the world,",
                textAlign: TextAlign.justify,
              )
            ],
          ),
        ),
      ),
    );
  }
}
