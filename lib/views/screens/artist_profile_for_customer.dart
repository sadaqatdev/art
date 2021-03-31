import 'package:art/views/widgets/constant.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class ArtistProfile_forCustomer extends StatefulWidget {
  @override
  _ArtistProfileState createState() => _ArtistProfileState();
}

class _ArtistProfileState extends State<ArtistProfile_forCustomer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFFF3D3A3A),
        title: Text("Artist Profile"), //TODO: USer NAme
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 18.0,
                    backgroundImage:
                        AssetImage("images/ava.png"), //TODO: Profile Pic
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  "AHSAN", //TODO: User Name
                  style: kTextStyleHeader,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  "4.1", //TODO: Rating
                  style: TextStyle(color: Colors.grey, fontSize: 15.0),
                ),
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 15.0,
                ),
                Text(
                  "(223)", //TODO: Rating
                  style: TextStyle(color: Colors.grey, fontSize: 15.0),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  children: [
                    Text(
                      "123", //TODO: Show number Views
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "Views",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 10),
                    ),
                  ],
                ),
                SizedBox(
                  width: 5.0,
                ),
                Column(
                  children: [
                    Text(
                      "122", //TODO: Show Numbers of offers
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "Offers",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 10),
                    ),
                  ],
                ),
                SizedBox(
                  width: 5.0,
                ),
                Column(
                  children: [
                    Text(
                      "13", //TODO: Show Number of order
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "Orders",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 10),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Text(
                  "ArtWorks  12",
                  style: kCategoryText,
                ),
              ],
            ),
            Divider(
              thickness: 2.0,
            ),
            //TODO: Grid view of Art work
            Expanded(
              child: GridView.count(
                childAspectRatio: 80 / (440 / 4),
                crossAxisCount: 2,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
                shrinkWrap: true,
                children: List.generate(
                  10,
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
                              height: 110.0, width: 165.0,
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
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, top: 5),
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
                  },
                ),
                //
              ),
            ),
          ],
        ),
      ),
    );
  }
}
