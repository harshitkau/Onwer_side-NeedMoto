import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class RushWheel extends StatefulWidget {
  const RushWheel({super.key});

  @override
  State<RushWheel> createState() => _RushWheelState();
}

class _RushWheelState extends State<RushWheel> {
  bool forAndroid = false;
  bool _offride = false;
  final Rxn<bool> selected = Rxn<bool>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: MediaQuery.of(context).size.height * 0.24,
      // height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                blurRadius: 10,
                spreadRadius: 1)
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Name:",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey),
                              ),
                              Text(
                                " Celerio",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                "Number:",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey),
                              ),
                              Text(
                                "TSON4555HGYI",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                "KM:",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey),
                              ),
                              Text(
                                "45000",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ]),
                  ],
                ),
                Column(
                  children: [
                    Switch(
                      activeColor: Color.fromARGB(198, 244, 67, 54),
                      activeTrackColor: Color.fromARGB(126, 247, 151, 146),
                      inactiveThumbColor: Color.fromARGB(179, 211, 211, 211),
                      inactiveTrackColor: Color.fromARGB(255, 189, 188, 188),
                      splashRadius: 50.0,
                      value: forAndroid,
                      onChanged: (value) {
                        setState(() {
                          forAndroid = value;
                        });
                      },
                    ),
                    SizedBox(height: 10),
                    CircleAvatar(
                      radius: 32,
                      backgroundColor:
                          Colors.green, //change color according to the status
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://imgd-ct.aeplcdn.com/370x208/n/cw/ec/128413/scorpio-exterior-right-front-three-quarter-46.jpeg?isig=0&q=75"),
                          radius: 27,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // SizedBox(height: 10,)
          Divider(
            color: Colors.black,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Obx(
                      () => Checkbox(
                        activeColor: Color.fromARGB(255, 33, 103, 243),
                        value: selected.value == true,
                        onChanged: (val) {
                          if (val == true) {
                            selected.value = true;
                            setState(() {
                              _offride = true;
                            });
                            print(_offride);
                          } else {
                            selected.value = false;
                            setState(() {
                              _offride = false;
                            });
                            print(_offride);
                          }
                        },
                      ),
                    ),
                    _offride
                        ? Text(
                            "On Ride",
                            style: TextStyle(color: Colors.blue),
                          )
                        : Text(
                            "Off Ride",
                            style: TextStyle(color: Colors.grey),
                          ),
                  ],
                ),
                _offride
                    ? Row(
                        children: [
                          Text("Track Vehicle",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 12)),
                        ],
                      )
                    : Container(),
                Row(
                  children: [
                    Text("View more details",
                        style: TextStyle(color: Colors.red, fontSize: 12)),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
