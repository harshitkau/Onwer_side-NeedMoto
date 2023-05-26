import 'package:flutter/material.dart';

class AllGPS extends StatefulWidget {
  const AllGPS({super.key});

  @override
  State<AllGPS> createState() => _AllGPSState();
}

class _AllGPSState extends State<AllGPS> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 10),
            field(context, true),
            Divider(
              color: Colors.black,
            ),
            SizedBox(height: 10),
            field(context, false),
            Divider(
              color: Colors.black,
            ),
            SizedBox(height: 10),
            field(context, false),
            Divider(
              color: Colors.black,
            ),
            SizedBox(height: 10),
            field(context, true),
            Divider(
              color: Colors.black,
            ),
            SizedBox(height: 10),
            field(context, false),
            Divider(
              color: Colors.black,
            ),
            SizedBox(height: 10),
            field(context, true),
          ],
        ),
      ),
    );
  }

  Widget field(BuildContext context, bool ignition) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "TS08EC2505",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Today 01:39PM",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(60, 255, 205, 210),
                        borderRadius: BorderRadius.circular(30)),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.email_outlined,
                          size: 23,
                          color: Colors.red,
                        )),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(88, 200, 230, 201),
                        borderRadius: BorderRadius.circular(30)),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.phone_outlined,
                          size: 23,
                          color: Colors.green,
                        )),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Column(children: [
              Row(
                children: [
                  Icon(
                    Icons.pin_drop_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.81,
                    child: Text(
                      "Nagole Roda Chandrapuri colony, Uppdal, Hyderabad, Rangareddy, Telangana, 500039, India",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54),
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
              SizedBox(height: 6),
              Row(
                children: [
                  ignition
                      ? Icon(
                          Icons.circle,
                          color: Colors.green,
                        )
                      : Icon(
                          Icons.remove_circle,
                          color: Colors.red,
                        ),
                  SizedBox(width: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: ignition
                        ? Text(
                            "Running",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.green),
                          )
                        : Text(
                            "Stopped Since 1h 27m",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.red),
                            textAlign: TextAlign.justify,
                          ),
                  )
                ],
              ),
              SizedBox(height: 5),
              Divider(
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Ignition ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        ignition ? "ON" : "OFF",
                        style: TextStyle(
                            color: ignition ? Colors.green : Colors.red,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Speed ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "0.0 km/h",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Travelled Today ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "61.42 km",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
