import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onwer/object/bottomNavigationBar.dart';
import 'package:onwer/object/rush_wheel_card.dart';
import 'package:onwer/screen/add_vehicle.dart';

import 'nav_drawer.dart';

class OwnerHome extends StatefulWidget {
  // OwnerHome({super.key, required this.name, required this.phoneNumber});
  // String name;
  // String phoneNumber;

  @override
  State<OwnerHome> createState() => _OwnerHomeState();
}

class _OwnerHomeState extends State<OwnerHome> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(159, 108, 255, 1),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications_none_outlined,
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
      ),
      drawer: SideDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _size.height * 0.4,
              width: _size.width,
              color: Color.fromRGBO(159, 108, 255, 1),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  // Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       IconButton(
                  //         icon: Icon(
                  //           Icons.notifications_none_outlined,
                  //           size: 30,
                  //         ),
                  //         onPressed: () {},
                  //       ),
                  //     ]),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(70)),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.amber,
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80"),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    // widget.name,
                    "Kiran Kumar",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Text(
                    // "+91 ${widget.phoneNumber}",
                    "+91 9949494949",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white60),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Text("Welcome to Rush Wheels",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 30),
            // addVehicle(context),
            RushWheel(),
            SizedBox(height: 25),
            RushWheel(),
            SizedBox(height: 25),
            _addButton(context)
          ],
        ),
      ),
      bottomNavigationBar: BottomTab(),
    );
  }

  Widget addVehicle(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50, left: 30, right: 30),
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
          color: Color.fromRGBO(212, 235, 255, 1),
          // color: Colors.green[500],
          borderRadius: BorderRadius.circular(20)),
      child: Column(children: [
        Text(
          "Get money by adding your vehicle to rush wheels and give for rent 1 day to so many days",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ]),
    );
  }

  Widget _addButton(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          )),
          backgroundColor: MaterialStateProperty.all(Colors.orange[600]),
        ),
        onPressed: () {
          Get.offAll(() => AddVehicle());
        },
        child: Center(
          child: Text(
            "Add Vehicle",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
