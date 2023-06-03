import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:onwer/object/bottomNavigationBar.dart';

import 'cancel_request.dart';
import 'handover_rider.dart';

class CustomerAccept extends StatefulWidget {
  const CustomerAccept({super.key});

  @override
  State<CustomerAccept> createState() => _CustomerAcceptState();
}

bool isAccept = false;

class _CustomerAcceptState extends State<CustomerAccept> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
          "Customer Details",
          style: TextStyle(color: Colors.black),
        ),
        surfaceTintColor: Colors.black,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _customerAccept(),
            isAccept
                ? Container()
                : Divider(
                    color: Colors.black, indent: 25, endIndent: 25, height: 5),
            SizedBox(height: 20),
            isAccept ? _accepted() : Container(),
            SizedBox(height: 30),
            _profileCard(),
          ],
        ),
      ),
      // bottomNavigationBar: BottomTab(),
    );
  }

  Widget _accepted() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      height: MediaQuery.of(context).size.height * 0.23,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromRGBO(227, 250, 166, 1)),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "You have accepted",
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.green),
          ),
          SizedBox(height: 8),
          Text(
            "Please keep your vehicle in good condition",
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 12, color: Colors.black),
          ),
          SizedBox(height: 5),
          Text(
            "Rider will pickup your vehicle from your office location on 8//6/2022 Morning 9am.",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Take",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Required documents",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.red),
                  )),
              Text(
                "and handover the vehicle",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color.fromRGBO(16, 0, 110, 0.8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HandoverRider()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Handover to Rider",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              SizedBox(width: 5),
              TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                    _showAlertDialog(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Cancel",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }

  Widget _customerAccept() {
    return Container(
      padding: EdgeInsets.only(
        left: 25,
        right: 25,
        top: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Customer requesting your vehicle for 2 days from 8/6/2022 Morning 9AM.",
            style: TextStyle(
                color: Colors.black, fontSize: 17, fontWeight: FontWeight.w500),
          ),
          Text(
            "Hyderabad - Vijayawada",
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 10),
          Text(
            "Pickup from your office location",
            style: TextStyle(
                color: Colors.black45,
                fontSize: 14,
                fontWeight: FontWeight.w400),
          ),
          isAccept
              ? Container()
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      isAccept ? "" : "Expire on 2 hours",
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {
                              setState(() {
                                isAccept = false;
                              });
                            },
                            child: Text(
                              "Decline",
                              style: TextStyle(color: Colors.red),
                            )),
                        SizedBox(width: 20),
                        TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: isAccept
                                    ? Color.fromARGB(137, 154, 152, 152)
                                    : Color.fromRGBO(16, 0, 110, 0.8),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            onPressed: () {
                              setState(() {
                                isAccept = true;
                                print(isAccept);
                              });
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                isAccept ? "Accepted" : "Accept",
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                      ],
                    )
                  ],
                )
        ],
      ),
    );
  }

  Widget _profileCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(20, 0, 0, 0),
                spreadRadius: 4,
                blurRadius: 10)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Stack(
              children: [
                isAccept
                    ? Positioned(
                        right: 15,
                        top: 10,
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(60, 255, 205, 210),
                                  borderRadius: BorderRadius.circular(30)),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.email_outlined,
                                    size: 25,
                                    color: Colors.red,
                                  )),
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(88, 200, 230, 201),
                                  borderRadius: BorderRadius.circular(30)),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.phone_outlined,
                                    size: 25,
                                    color: Colors.green,
                                  )),
                            ),
                          ],
                        ),
                      )
                    : Container(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Column(children: [
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(70)),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.amber,
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80"),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Kiran Kumar reddy",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text("+91 9949494949",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black45)),
                    RatingBarIndicator(
                        rating: 2.5,
                        itemCount: 5,
                        itemSize: 25.0,
                        itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.redAccent,
                            )),
                    SizedBox(height: 10),
                    Divider(color: Colors.black, height: 5),
                  ]),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Address",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "5-48/3, Sri lakshmi ganapathi nilayam, Road no. 7, near saibaba temple Boduppal, peerzadiguda, Hyd, Telangana - 500092",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.black),
                  )
                ]),
          )
        ],
      ),
    );
  }

  void _showAlertDialog(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text(
          'Cencel Request',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        content: const Text(
          'Are you sure \nyou want to \ncancel this request',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
        ),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            isDestructiveAction: true,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CancelRequest()));
            },
            child: const Text('Yes'),
          ),
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('No'),
          ),
        ],
      ),
    );
  }
}
