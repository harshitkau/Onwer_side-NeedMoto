import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:onwer/screen/received_vehicle/map_panel.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class TrackingMap extends StatefulWidget {
  const TrackingMap({super.key});

  @override
  State<TrackingMap> createState() => _TrackingMapState();
}

class _TrackingMapState extends State<TrackingMap> {
  final panelController = PanelController();
  @override
  Widget build(BuildContext context) {
    final panelHeightClosed = MediaQuery.of(context).size.height * 0.08;
    final panelHeightOpen = MediaQuery.of(context).size.height * 0.35;
    var fabHeight = MediaQuery.of(context).size.height * 0.1;
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
          "TRACKING ",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SlidingUpPanel(
            controller: panelController,
            minHeight: panelHeightClosed,
            maxHeight: panelHeightOpen,
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            parallaxEnabled: true,
            parallaxOffset: 0.5,
            body: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://lh3.googleusercontent.com/0quLbsXy2A75dAY8qxK8p-I8R1jVSAgUxrLzU5h2vGzulPkpV9Uk6V3kxKI6sICNjvuaDFgq4yn0IrcyEu6IygAjUx84q2s9f5ERHJ0=w638"),
                      fit: BoxFit.cover)),
            ),
            panelBuilder: (controller) => MapPanel(
              controller: controller,
              panelcontroller: panelController,
            ),
            onPanelSlide: (position) {
              setState(() {
                final panelMaxScrollExtent =
                    panelHeightOpen - panelHeightClosed;
                fabHeight = position * panelMaxScrollExtent;
              });
            },
          ),
          Positioned(right: 20, bottom: fabHeight, child: buildFloat(context)),
        ],
      ),
    );
  }

  Widget buildFloat(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.white,
      child: Icon(
        Icons.gps_fixed,
        color: Colors.blue,
      ),
    );
  }
}
