import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MapPanel extends StatelessWidget {
  final ScrollController controller;
  final PanelController panelcontroller;
  const MapPanel(
      {super.key, required this.controller, required this.panelcontroller});

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: controller,
      padding: EdgeInsets.zero,
      children: <Widget>[
        SizedBox(height: 10),
        dragHandler(),
        content(),
      ],
    );
  }

  Widget content() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 17),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Today: 12:00 AM - 02:11PM",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
            ),
            Text(
              "Trip History",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
            ),
          ],
        ),
        SizedBox(height: 8),
        Divider(
          color: Colors.black,
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.circle_sharp,
                  color: Colors.green[600],
                  size: 15,
                ),
                SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Icon(Icons.remove_circle_outline_outlined)

                    SizedBox(width: 5),
                    Text(
                      "Running",
                      style: TextStyle(
                          color: Colors.green[600],
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "20.1 KM",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      "7h 8m",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.remove_circle_outlined,
                  color: Colors.red[600],
                  size: 15,
                ),
                SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //

                    SizedBox(width: 5),
                    Text(
                      "Stops",
                      style: TextStyle(
                          color: Colors.red[600], fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "0 Stop",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      "-",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.circle_sharp,
                  color: Colors.grey[600],
                  size: 15,
                ),
                SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Icon(Icons.remove_circle_outline_outlined)

                    SizedBox(width: 5),
                    Text(
                      "Low Network",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "1 Time",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      "7h 5m",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.circle_sharp,
              color: Colors.green[600],
              size: 25,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Moving",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Since 7h 12m",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                  ],
                ),
                Text(
                  "Last updated : 02:18 PM, 18 Sep 2022",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                )
              ],
            )
          ],
        ),
        SizedBox(height: 25),
        Text(
          "Nagole Roda Chandrapuri colony, Uppdal, Hyderabad, Rangareddy, Telangana, 500039, India",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          textAlign: TextAlign.justify,
        )
      ]),
    );
  }

  Widget dragHandler() {
    return GestureDetector(
      onTap: togglePanel,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[300], borderRadius: BorderRadius.circular(30)),
          width: 50,
          height: 7,
        ),
      ),
    );
  }

  void togglePanel() {
    panelcontroller.isPanelOpen
        ? panelcontroller.close()
        : panelcontroller.open();
  }
}
