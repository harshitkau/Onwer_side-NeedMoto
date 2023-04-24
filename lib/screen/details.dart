import 'package:flutter/material.dart';
import 'package:onwer/controller/vehicle_details_controller.dart';

import '../object/dropDownButtons/companydrop.dart';
import '../object/dropDownButtons/fueldrop.dart';
import '../object/dropDownButtons/ownTax.dart';
import '../object/textfield.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
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
      const SizedBox(height: 20),
      //
      DropField(),

      //
      const SizedBox(height: 20),
      //
      TextInputField(controller: _numberController, myLabelText: "Number"),
      //
      const SizedBox(height: 20),
      //
      TextInputField(controller: _modelController, myLabelText: "Model"),
      //
      const SizedBox(height: 20),
      //
      TextInputField(
          controller: _currentReadingController,
          myLabelText: "Current Reading"),
      const SizedBox(height: 20),
      //
      TextInputField(controller: _rcNumberController, myLabelText: "RC Number"),
      //
      const SizedBox(height: 20),
      //
      FuelDropField(),
      //
      const SizedBox(height: 20),
      OwnTaxDropField(),
      //
      const SizedBox(height: 10),
      //
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
