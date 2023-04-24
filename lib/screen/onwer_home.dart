import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onwer/object/bottomNavigationBar.dart';
import 'package:onwer/screen/add_vehicle.dart';

class OwnerHome extends StatelessWidget {
  OwnerHome({super.key, required this.name, required this.phoneNumber});
  String name;
  String phoneNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(159, 108, 255, 1),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            size: 30,
          ),
          onPressed: () {},
        ),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.34,
              width: MediaQuery.of(context).size.width,
              color: Color.fromRGBO(159, 108, 255, 1),
              child: Column(
                children: [
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
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Text(
                    "+91 $phoneNumber",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white60),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Text("Welcome to Rush Wheels",
                style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 30),
            Container(
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
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 30),
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: 70,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      )),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.orange[600]),
                    ),
                    onPressed: () {
                      Get.offAll(() => AddVehicle());
                    },
                    child: Center(
                      child: Text(
                        "Add Vehicle",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomTab(),
    );
  }
}
