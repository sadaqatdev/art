import 'package:art/views/widgets/constant.dart';
import 'package:flutter/material.dart';

class OfferDetail extends StatefulWidget {
  @override
  _OfferDetailState createState() => _OfferDetailState();
}

class _OfferDetailState extends State<OfferDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF3D3A3A),
        title: Text("Offer Detail"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  radius: 80.0,
                  backgroundImage:
                      AssetImage("images/ava.png"), //TODO: Profile Pic
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                "AHSAN", //TODO: User Name
                style: kTextStyleHeader,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                "Offer : 155\$", //TODO: OFFER
                style: kTextStyleHeader,
              ),
              SizedBox(
                width: 5.0,
              ),
              Divider(
                thickness: 2.0,
              ),
              Text(
                "Personal Info",
                style: kTextStyleHeader,
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    size: 30.0,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email",
                        style: kCategoryText,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "Example@mail.com", //TODO: EMAIL
                        style: kCategoryText,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                    ],
                  )
                ],
              ),
              Divider(
                thickness: 2.0,
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  Icon(
                    Icons.phone,
                    size: 30.0,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Phone Number", //TODO: Phone Number
                        style: kCategoryText,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "+92-325511235",
                        style: kCategoryText,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                    ],
                  )
                ],
              ),
              Divider(
                thickness: 2.0,
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  Icon(
                    Icons.lock,
                    size: 30.0,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Address",
                        style: kCategoryText,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "Islamabad Pakistan", //TODO: Address
                        style: kCategoryText,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    minWidth: 120.0,
                    height: 50.0,
                    onPressed: () {},
                    color: Colors.black38,
                    child: Text(
                      "Accept",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  FlatButton(
                    minWidth: 120.0,
                    height: 50.0,
                    onPressed: () {},
                    color: Colors.red,
                    child: Text(
                      "Decline",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
