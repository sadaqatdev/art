import 'package:art/controllers/artist_notification_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArtistNotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFFFF3D3A3A),
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
          title: Text(
            "Notifications",
            style: TextStyle(fontSize: height / 50, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: GetBuilder<ArtistNotificationController>(
              init: ArtistNotificationController(),
              builder: (controller) {
                return Container(
                  width: width / 1.1,
                  child: Column(
                    children: [
                      SizedBox(
                        height: height / 70,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        child: ListView.builder(
                            // scrollDirection: Axis.horizontal,
                            itemCount: controller.notification.getLength(),
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  ListTile(
                                    leading: CircleAvatar(
                                      backgroundImage: AssetImage(
                                        "${controller.notification.getImage(index)}",
                                      ),
                                      radius: 30.0,
                                    ),
                                    title: Text(
                                      //TODO:ORDER STATUS
                                      "${controller.notification.getOrder(index)}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),

                                    //TODO: Order Number and date
                                    subtitle: Text(
                                      "${controller.notification.getMessage(index)}",
                                      // textAlign: TextAlign.justify,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Divider(
                                    thickness: 2,
                                  ),
                                ],
                              );
                            }),
                      ),
                      Divider(
                        thickness: 2.0,
                      )
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
