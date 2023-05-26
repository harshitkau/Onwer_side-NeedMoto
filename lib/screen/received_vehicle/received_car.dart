import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:onwer/screen/received_vehicle/rating_to_rider.dart';

import '../../controller/scratches_dropdown.dart';
import '../../object/bottomNavigationBar.dart';
import '../../object/textfield.dart';

class ReceivedCar extends StatefulWidget {
  const ReceivedCar({super.key});

  @override
  State<ReceivedCar> createState() => _ReceivedCarState();
}

class _ReceivedCarState extends State<ReceivedCar> {
  ScratchesDropdownController controller = ScratchesDropdownController();
  TextEditingController _ridingController = TextEditingController();
  TextEditingController _damageController = TextEditingController();
  TextEditingController _fastagController = TextEditingController();
  TextEditingController _messageController = TextEditingController();
  TextEditingController dateInput = TextEditingController();
  final Rxn<bool> selected = Rxn<bool>();

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
          "RECEIVE VEHICLE",
          style: TextStyle(color: Colors.black),
        ),
        surfaceTintColor: Colors.black,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: Column(children: [
                  Stack(
                    children: [
                      TextInputField(
                        controller: _ridingController,
                        myLabelText: "Reading",
                      ),
                      Positioned(
                        right: 0,
                        child: Container(
                          height: 60,
                          width: 120,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.black12),
                          child: Center(
                              child: Text(
                            "100 Km",
                            style: TextStyle(fontSize: 18),
                          )),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    // padding: EdgeInsets.all(20),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: DropdownSearch(
                      popupProps: PopupProps.menu(
                        constraints: BoxConstraints(maxHeight: 200),
                      ),
                      items: controller.options,

                      dropdownDecoratorProps: DropDownDecoratorProps(
                          dropdownSearchDecoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        labelText: 'Scratches',
                      )),
                      onChanged: (value) {
                        controller.setValue(value!);
                      },
                      // selectedItem: controller.selectedItem,
                    ),
                  ),
                  SizedBox(height: 20),
                  TextInputField(
                    controller: _damageController,
                    myLabelText: "Damages",
                  ),
                  SizedBox(height: 20),
                  TextInputField(
                    controller: _fastagController,
                    myLabelText: "Fastag amount",
                  ),
                  SizedBox(height: 20),
                  TextInputField(
                    controller: _fastagController,
                    myLabelText: "Other Charges",
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _messageController,
                    // maxLength: 10,
                    maxLines: 10,
                    minLines: 10,
                    decoration: InputDecoration(
                      // hintText: 'Message',
                      labelText: 'Message',
                      alignLabelWithHint: true,
                      constraints:
                          BoxConstraints(maxHeight: 400, minHeight: 50),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          )),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  otp(),
                ]),
              ),
              _submitButton(context)
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomTab(),
    );
  }

  Widget otp() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Please enter OTP. Rush wheels shared with Rider",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: MediaQuery.of(context).size.width * 0.95,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 228, 255, 154),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                      child: Text(
                    "5",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 228, 255, 154),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                      child: Text(
                    "5",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 228, 255, 154),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                      child: Text(
                    "5",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 228, 255, 154),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                      child: Text(
                    "5",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
                Icon(Icons.check_circle, color: Colors.green, size: 45)
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            // margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            width: MediaQuery.of(context).size.width * 0.9,
            child: Row(children: [
              Obx(
                () => Checkbox(
                  activeColor: Color.fromARGB(255, 33, 103, 243),
                  value: selected.value == true,
                  onChanged: (val) {
                    val == true
                        ? selected.value = true
                        : selected.value = false;
                  },
                ),
              ),
              Container(
                width: 290,
                child: Text(
                  "I have received above checked documents from rider",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }

  Widget _submitButton(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            )),
            backgroundColor:
                MaterialStateProperty.all(Color.fromARGB(255, 0, 15, 112))),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => RatingToRider()));
        },
        child: Center(
          child: Text(
            "Submit",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
