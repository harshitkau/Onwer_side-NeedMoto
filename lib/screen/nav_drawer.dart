import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:onwer/screen/drawer_Screen/profile_page.dart';
import 'package:onwer/screen/drawer_Screen/vehicle_history.dart';

import 'add_vehicle.dart';
import 'drawer_Screen/gps.dart';
import 'drawer_Screen/notification.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(217, 0, 0, 0),
      child: Container(
        margin: EdgeInsets.only(left: 30),
        child: ListView(
          children: [
            SizedBox(height: 25),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
              child: Text(
                "Profle",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
            SizedBox(height: 25),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VehicleHistroty(),
                    ));
              },
              child: Text(
                "Vehicle history",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
            SizedBox(height: 25),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddVehicle()));
              },
              child: Text(
                "Add Vehicle",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
            SizedBox(height: 25),
            InkWell(
              onTap: () {},
              child: Text(
                "Payment history",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
            SizedBox(height: 25),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationPage()));
              },
              child: Text(
                "Notifications",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
            SizedBox(height: 25),
            InkWell(
              onTap: () {},
              child: Text(
                "Reports",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
            SizedBox(height: 25),
            InkWell(
              onTap: () {},
              child: Text(
                "Settings",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
            SizedBox(height: 25),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Gps()));
              },
              child: Text(
                "Buy GPS",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
            SizedBox(height: 25),
            InkWell(
              onTap: () {},
              child: Text(
                "Subscription",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
            SizedBox(height: 25),
            InkWell(
              onTap: () {},
              child: Text(
                "Refer and earn",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
            SizedBox(height: 25),
            InkWell(
              onTap: () {},
              child: Text(
                "Offers",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
            SizedBox(height: 25),
            InkWell(
              onTap: () {},
              child: Text(
                "Policies",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
            SizedBox(height: 25),
            InkWell(
              onTap: () {},
              child: Text(
                "Help & Support",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
            SizedBox(height: 25),
            InkWell(
              onTap: () {},
              child: Text(
                "Rate Us",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
            SizedBox(height: 25),
            InkWell(
              onTap: () {},
              child: Text(
                "My wallet",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
            SizedBox(height: 25),
            InkWell(
              onTap: () {},
              child: Text(
                "Your earning",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
