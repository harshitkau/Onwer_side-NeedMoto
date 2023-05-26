import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:onwer/object/bottomNavigationBar.dart';
import 'package:onwer/screen/received_vehicle/received_car.dart';
import 'package:onwer/screen/received_vehicle/tracking_map.dart';

class TrackVehicle extends StatefulWidget {
  const TrackVehicle({super.key});

  @override
  State<TrackVehicle> createState() => _TrackVehicleState();
}

class _TrackVehicleState extends State<TrackVehicle> {
  bool forAndroid = false;
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
          "CUSTOMER DETAILS",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 25),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TrackingMap()));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  height: 53,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(227, 250, 166, 1),
                      border: Border.all(
                        color: Color.fromARGB(255, 15, 159, 20),
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Track vehicle",
                        style: TextStyle(
                            color: Color.fromARGB(255, 15, 159, 20),
                            fontSize: 20),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.green[100]),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Color.fromARGB(255, 15, 159, 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Stack(
                children: [
                  Positioned(
                    right: 0,
                    // top: 10,
                    child: Row(
                      children: [
                        SizedBox(width: 10),
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
                    ),
                  ),
                  Container(
                    // padding: EdgeInsets.symmetric(horizontal: 25),
                    width: MediaQuery.of(context).size.width * 0.85,
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
                          backgroundColor: Colors.grey,
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80"),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Text(
                "Kiran Kumar reddy",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(20, 0, 0, 0),
                          spreadRadius: 4,
                          blurRadius: 10)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Given Date",
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 17),
                          ),
                          Text(
                            "8/2/2022",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Time",
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 17),
                          ),
                          Text(
                            "8:20",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Reading",
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 17),
                          ),
                          Text(
                            "40035",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Need time",
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 17),
                          ),
                          Text(
                            "24 Hours",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Duration",
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 17),
                          ),
                          Text(
                            "14:26:45",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Increase duration",
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 17),
                          ),
                          Row(
                            children: [
                              forAndroid
                                  ? Text(
                                      "48",
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                    )
                                  : Text(""),
                              Switch(
                                activeColor: Colors.green,
                                activeThumbImage: NetworkImage(
                                    "https://i.pinimg.com/originals/7b/dd/1b/7bdd1bc7db7fd48025d4e39a0e2f0fd8.jpg"),
                                activeTrackColor: Colors.black12,
                                inactiveThumbColor: Colors.white,
                                inactiveTrackColor:
                                    Color.fromARGB(255, 189, 188, 188),
                                splashRadius: 50.0,
                                value: forAndroid,
                                onChanged: (value) {
                                  setState(() {
                                    forAndroid = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Given address",
                        style: TextStyle(color: Colors.grey[600], fontSize: 17),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "5-48/3, Sri lakshmi ganapathi nilayam, Road no. 7, near saibaba temple Boduppal, peerzadiguda, Hyd, Telangana - 500092",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 14),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Customer address",
                        style: TextStyle(color: Colors.grey[600], fontSize: 17),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "5-48/3, Sri lakshmi ganapathi nilayam, Road no. 7, near saibaba temple Boduppal, peerzadiguda, Hyd, Telangana - 500092",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 14),
                      ),
                    ]),
              ),
              SizedBox(height: 20),
              _receivedButton(context),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomTab(),
    );
  }

  Widget _receivedButton(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 60,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          )),
          backgroundColor:
              MaterialStateProperty.all(Color.fromARGB(181, 30, 136, 229)),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ReceivedCar()));
        },
        child: Center(
          child: Text(
            "Receive Vehicle",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
