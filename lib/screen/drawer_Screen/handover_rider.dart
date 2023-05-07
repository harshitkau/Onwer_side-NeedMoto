import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../controller/scratches_dropdown.dart';
import '../../object/bottomNavigationBar.dart';
import '../../object/textfield.dart';
import 'handover_vehicle.dart';

class HandoverRider extends StatefulWidget {
  const HandoverRider({super.key});

  @override
  State<HandoverRider> createState() => _HandoverRiderState();
}

class _HandoverRiderState extends State<HandoverRider> {
  ScratchesDropdownController controller = ScratchesDropdownController();
  TextEditingController _ridingController = TextEditingController();
  TextEditingController _damageController = TextEditingController();
  TextEditingController _fastagController = TextEditingController();
  TextEditingController _messageController = TextEditingController();
  TextEditingController dateInput = TextEditingController();

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
          "Handover Vehicle",
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
                margin: EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                child: Text(
                  "Before handoving vehicle please fill bellow details and take a video of your vehicle",
                  // textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {},
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.red[50],
                          borderRadius: BorderRadius.circular(30)),
                      child: Icon(
                        Icons.photo_camera_front,
                        color: Color.fromARGB(255, 220, 101, 27),
                        size: 30,
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Take a video of your vehicle",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 220, 101, 27)),
                    )
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Column(children: [
                  TextInputField(
                    controller: _ridingController,
                    myLabelText: "Reading",
                  ),
                  SizedBox(height: 30),
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
                  SizedBox(height: 30),
                  TextInputField(
                    controller: _damageController,
                    myLabelText: "Damages",
                  ),
                  SizedBox(height: 30),
                  TextInputField(
                    controller: _fastagController,
                    myLabelText: "Fastag amount",
                  ),
                  SizedBox(height: 30),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Center(
                          child: TextField(
                        controller: dateInput,

                        decoration: InputDecoration(
                            labelText: "Handovering Date and Time",
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
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Icon(Icons.calendar_month),
                            )),
                        readOnly: true,

                        //set it true, so that user will not able to edit text
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1950),
                              //DateTime.now() - not to allow to choose before today.
                              lastDate: DateTime(2100));

                          if (pickedDate != null) {
                            print(
                                pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                            String formattedDate =
                                DateFormat('yyyy-MM-dd').format(pickedDate);
                            print(
                                formattedDate); //formatted date output using intl package =>  2021-03-16
                            setState(() {
                              dateInput.text =
                                  formattedDate; //set output date to TextField value.
                            });
                          } else {}
                        },
                      ))),
                  SizedBox(height: 30),
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
                  )
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
              MaterialPageRoute(builder: (context) => HandoverVehicle()));
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
