import 'package:flutter/material.dart';
import 'package:onwer/object/textfield.dart';

import 'dropDownButtons/companydrop.dart';
import 'dropDownButtons/fueldrop.dart';
import 'dropDownButtons/ownTax.dart';

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  int _challansValue = 0;
  int _insurenceValue = 0;
  bool checkfield = false;
  StepperType stepperType = StepperType.vertical;

  @override
  Widget build(BuildContext context) {
    TextEditingController _vehicalnameController = TextEditingController();
    TextEditingController _numberController = TextEditingController();
    TextEditingController _modelController = TextEditingController();
    TextEditingController _currentReadingController = TextEditingController();
    TextEditingController _rcNumberController = TextEditingController();
    TextEditingController _vehicleLocation = TextEditingController();
    return Column(children: [
      TextInputField(
          controller: _vehicalnameController, myLabelText: "Vehical Name"),
      SizedBox(height: 20),
      DropField(),
      SizedBox(height: 20),
      TextInputField(controller: _numberController, myLabelText: "Number"),
      SizedBox(height: 20),
      TextInputField(controller: _modelController, myLabelText: "Model"),
      SizedBox(height: 20),
      TextInputField(
          controller: _currentReadingController,
          myLabelText: "Current Reading"),
      SizedBox(height: 20),
      TextInputField(controller: _rcNumberController, myLabelText: "RC Number"),
      SizedBox(height: 20),
      FuelDropField(),
      SizedBox(height: 20),
      OwnTaxDropField(),
      SizedBox(height: 10),
      _Challans_Insurence(),
      SizedBox(height: 10),
      TextInputField(
          controller: _vehicleLocation, myLabelText: "Vehicle Location"),
      const Padding(
        padding: const EdgeInsets.only(left: 170, top: 2),
        child: Text(
          "Same as home address",
          style: TextStyle(color: Colors.red),
        ),
      ),
      SizedBox(height: 20),
    ]);
  }

  Widget _Challans_Insurence() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          children: [
            Text(
              "Pending Challans",
              style: TextStyle(color: Colors.black54),
            ),
            Row(
              children: [
                Row(
                  children: [
                    Radio(
                        value: 1,
                        groupValue: _challansValue,
                        onChanged: (value) {
                          setState(() {
                            _challansValue = value!;
                          });
                        }),
                    Text(
                      "Yes",
                    ),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        value: 2,
                        groupValue: _challansValue,
                        onChanged: (value) {
                          setState(() {
                            _challansValue = value!;
                          });
                        }),
                    Text(
                      "No",
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Text(
              "Have Insurence for Vehicle",
              style: TextStyle(color: Colors.black54),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Radio(
                        value: 1,
                        groupValue: _insurenceValue,
                        onChanged: (value) {
                          setState(() {
                            _insurenceValue = value!;
                          });
                        }),
                    Text("Yes"),
                  ],
                ),
                SizedBox(width: 30),
                Row(
                  children: [
                    Radio(
                        value: 2,
                        groupValue: _insurenceValue,
                        onChanged: (value) {
                          setState(() {
                            _insurenceValue = value!;
                          });
                        }),
                    Text("No"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
