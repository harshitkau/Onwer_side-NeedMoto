import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Notification",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.black,
        elevation: 1,
      ),
      body: ListView(
        children: [
          _notificationCard(context),
        ],
      ),
    );
  }

  Widget _notificationCard(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        height: MediaQuery.of(context).size.height * 0.2,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Color.fromARGB(20, 0, 0, 0),
              spreadRadius: 4,
              blurRadius: 10)
        ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Stack(
          children: [
            Positioned(
                right: 0,
                top: 0,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                      color: Colors.grey,
                    ))),
            Container(
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Customer request for your vehicle",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "Customer requesting your vehicle for 2 days from 8/6/2022 Morning 9AM.",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Hyderabad - Vijayawada",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Expire on 2 hours",
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Decline",
                                style: TextStyle(color: Colors.red),
                              )),
                          SizedBox(width: 20),
                          TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(16, 0, 110, 0.8),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              onPressed: () {},
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "Accept",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
