import 'package:flutter/material.dart';
import 'package:onwer/object/bottomNavigationBar.dart';
import 'package:onwer/screen/drawer_Screen/customer_details.dart';

class CarDetails extends StatelessWidget {
  const CarDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        surfaceTintColor: Colors.black,
        elevation: 1,
        title: Text(
          "Celerio - TS08EC2505",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Ride 5",
                  style: TextStyle(
                      color: Color.fromARGB(255, 6, 21, 152),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "3000 KM",
                  style: TextStyle(
                      color: Color.fromARGB(255, 6, 21, 152),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Divider(
            color: Colors.black87.withOpacity(0.8),
          ),
          _vehicleCard(context),
          _vehicleCard(context),
          _vehicleCard(context),
          _vehicleCard(context),
          _vehicleCard(context),
          _vehicleCard(context),
          _vehicleCard(context),
          _vehicleCard(context),
          _vehicleCard(context),
          _vehicleCard(context),
          _vehicleCard(context),
          _vehicleCard(context),
          _vehicleCard(context),
        ],
      ),
      bottomNavigationBar: BottomTab(),
    );
  }

  Widget _vehicleCard(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      height: MediaQuery.of(context).size.height * 0.16,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Color.fromARGB(20, 0, 0, 0), spreadRadius: 4, blurRadius: 10)
      ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Text(
                      "Name: ",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54),
                    ),
                    Text(
                      "Kiran kumar reddy",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Number: ",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54),
                    ),
                    Text(
                      "+91 9949494949",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Date: ",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54),
                    ),
                    Text(
                      "27-07-2022",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Ride KM: ",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54),
                    ),
                    Text(
                      "500",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CustomerDetails()));
            },
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.orange[50]),
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.orange,
              ),
            ),
          )
        ],
      ),
    );
  }
}
