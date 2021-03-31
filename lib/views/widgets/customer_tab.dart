import 'package:art/views/screens/customer/customer_accepted_order.dart';
import 'package:art/views/screens/customer/customer_cancel_order.dart';
import 'package:art/views/screens/customer/customer_offer_sent.dart';
import 'package:flutter/material.dart';

class CustomerTab extends StatelessWidget {
  String status;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFFFF3D3A3A),
          title: Text(
            "Orders",
            style: TextStyle(fontSize: height / 50, color: Colors.white),
          ),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            tabs: [
              Tab(
                text: ("Offer Sent"),
              ),
              Tab(
                text: ("Accepted"),
              ),
              Tab(
                text: ("Canceled"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Text("helo"),
            SentOrders(),
            OrderAccepted(),
            OrderCancel(),
          ],
        ),
      ),
    );
  }
//
}
