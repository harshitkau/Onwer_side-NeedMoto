import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:onwer/controller/vehicle_details_controller.dart';

import '../controller/dropdown_controller.dart';
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
  final List<String> sugars = ['0', '1', '2', '3', '4'];
  int _challansValue = 0;

  int _insurenceValue = 0;

  bool checkfield = false;

  StepperType stepperType = StepperType.vertical;

  @override
  Widget build(BuildContext context) {
    DropdownController controller = DropdownController();

    TextEditingController _vehicalnameController = TextEditingController();
    TextEditingController _numberController = TextEditingController();
    TextEditingController _modelController = TextEditingController();
    TextEditingController _currentReadingController = TextEditingController();
    TextEditingController _rcNumberController = TextEditingController();
    TextEditingController _vehicleLocation = TextEditingController();
    String? _currentSugars;

    return Column(children: [
      TextInputField(
          controller: _vehicalnameController, myLabelText: "Vehical Name"),
      const SizedBox(height: 20),
      //
      DropField(),
      // Container(
      //   padding: EdgeInsets.all(20),
      //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      //   child: DropdownSearch(
      //     popupProps: PopupProps.menu(
      //       constraints: BoxConstraints(maxHeight: 200),
      //     ),
      //     items: controller.options,
      //     dropdownDecoratorProps: DropDownDecoratorProps(
      //         dropdownSearchDecoration: InputDecoration(
      //       border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      //       labelText: 'Seats',
      //     )),
      //     onChanged: (value) {
      //       setState(() {
      //         controller.setValue(value!);
      //       });
      //     },
      //     selectedItem: controller.selectedVal,
      //   ),
      // ),

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
      // const SizedBox(height: 20),
      // //
      // FuelDropField(),
      // //
      // const SizedBox(height: 20),
      // OwnTaxDropField(),
      // //
      // const SizedBox(height: 10),
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
      ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          )),
          backgroundColor:
              MaterialStateProperty.all(Color.fromARGB(255, 15, 94, 159)),
        ),
        onPressed: () {
          VehicleDetailsController.instance.details(
            _vehicalnameController.text,
            controller.selectedVal.toString(),
            _numberController.text,
            _modelController.text,
            _currentReadingController.text,
            _rcNumberController.text,
            _vehicleLocation.text,
          );
        },
        child: Center(
          child: Text(
            "Next",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
        ),
      ),
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
