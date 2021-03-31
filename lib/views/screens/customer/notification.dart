import 'package:art/controllers/customer_notification_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFFF3D3A3A),
        title: Text(
          "Notification",
          style: TextStyle(fontSize: height / 50, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              GetBuilder<CustommerNotificationController>(
                  init: CustommerNotificationController(),
                  builder: (controller) {
                    return Container(
                      height: MediaQuery.of(context).size.height,
                      child: ListView.builder(
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
                                    "${controller.notification.getOrder(index)}",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),

                                  //todo: Order Number and date
                                  subtitle: Text(
                                    "${controller.notification.getMessage(index)}",
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
                    );
                  }),
              Divider(
                thickness: 2.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
