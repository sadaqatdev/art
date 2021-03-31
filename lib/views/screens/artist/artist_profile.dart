import 'package:art/controllers/artist_profile_controller.dart';
import 'package:art/views/screens/Artist/profile_update.dart';
import 'package:art/views/widgets/constant.dart';
import 'package:art/views/widgets/flat_Button.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'edit_product.dart';

class ArtistProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFF3D3A3A),
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
          title: Text(
            "Profile",
            style: TextStyle(fontSize: height / 50, color: Colors.white),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: GetBuilder<ArtistProfileController>(
            init: ArtistProfileController(),
            builder: (controller) {
              return NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverPadding(
                      padding: new EdgeInsets.all(16.0),
                      sliver: new SliverList(
                        delegate: new SliverChildListDelegate([
                          Container(
                            // color: Colors.red,
                            width: width / 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 25.0,
                                          backgroundImage: AssetImage(
                                              "images/ava.png"), //TODO: Profile Pic
                                        ),
                                        Text(
                                          "Ahsan", //TODO: User Name
                                          style: kTextStyleHeader,
                                        ),
                                      ],
                                    ),
                                    //
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              "${controller.likes}", //TODO: Show likes
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: height / 55),
                                            ),
                                            SizedBox(
                                              height: height / 90,
                                            ),
                                            Text(
                                              "Likes",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey,
                                                  fontSize: height / 55),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: width / 10,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "${controller.views}", //TODO: Show number Views
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: height / 55),
                                            ),
                                            SizedBox(
                                              height: height / 90,
                                            ),
                                            Text(
                                              "Views",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey,
                                                  fontSize: height / 55),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: width / 10,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "${controller.offers}", //TODO: Show Numbers of offers
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: height / 55),
                                            ),
                                            SizedBox(
                                              height: height / 90,
                                            ),
                                            Text(
                                              "Offers",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey,
                                                  fontSize: height / 55),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: width / 30,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Pakistan", //TODO: Country
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        SizedBox(
                                          width: width / 80,
                                        ),
                                        Text(
                                          "4.1", //TODO: Rating
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.orange,
                                          size: height / 70,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: width / 8,
                                    ),
                                    Container(
                                      height: height / 30,
                                      width: width / 3.7,
                                      // ignore: deprecated_member_use
                                      child: RaisedButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      sellerProfileUpdate()));
                                        },
                                        child: Text(
                                          "Edit Profile",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: height / 60,
                                              color: Colors.white),
                                        ),
                                        color: Color(0xFFFF3D3A3A),
                                        splashColor: Colors.green,
                                        shape: StadiumBorder(),
                                      ),
                                    ),
                                    SizedBox()
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: width / 10,
                          ),
                          Divider(
                            color: Colors.red,
                          ),
                        ]),
                      ),
                    ),
                  ];
                },
                body: GridView.count(
                  childAspectRatio: 100 / (430 / 4),
                  crossAxisCount: 2,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0,
                  shrinkWrap: true,
                  children: List.generate(
                    10,
                    (index) {
                      return NewTile();
                    },
                  ),
                  //
                ),
              );
            }),
      ),
    );
  }
}

class NewTile extends StatelessWidget {
  const NewTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  //margin: EdgeInsets.only(bottom: 8.0),
                  height: 110.0, width: 165.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                    ),
                    image: DecorationImage(
                      image: AssetImage("imageSlide/p1.jpg"), //TODO: ART IMAGE
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                //**** CAMERA ICON FOR UPLOAD PROFILE PIC
                Positioned(
                    top: 10.0,
                    left: 5.0,
                    child: FilterFlatButton(
                      onpressed: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new editProduct()));
                      }, //TODO: EDIT BUTTON
                      colour: Colors.grey.withOpacity(0.5),
                      TxtColor: Colors.white,
                      ButtonTitle: "Edit",
                    )),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  EvaIcons.heart,
                  size: 15.0,
                  color: Colors.red,
                ),
                Text(
                  "5", //TODO: likes
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
                  "33", //TODO: VIEWS
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
                  "6", //TODO:offers
                  style: TextStyle(fontSize: 15.0),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Text(
              "The Canvas", //TODO: ART NAme
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "hello Word", //TODO: Creator Name
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
