import 'package:flutter/material.dart';
import 'package:onwer/object/dropDownButtons/tones.dart';
import 'package:onwer/object/dropDownButtons/withdriverdrop.dart';

import '../textfield.dart';

class OwnTaxDropField extends StatefulWidget {
  const OwnTaxDropField({super.key});

  @override
  State<OwnTaxDropField> createState() => _OwnTaxDropFieldState();
}

class _OwnTaxDropFieldState extends State<OwnTaxDropField> {
  bool checkOwn = false;
  bool checkTax = false;
  TextEditingController _seatingCapacityController = TextEditingController();
  TextEditingController _TaxCapacityController = TextEditingController();

  String dropDownValue = "";
  List<String> owntax = [
    'Own',
    'Tax',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButtonFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                ),
                hintStyle: TextStyle(color: Colors.grey[800]),
                hintText: "Own / Tax Plate",
              ),
              // value: dropDownValue,
              onChanged: (Value) {
                setState(() {
                  dropDownValue = Value!;
                  print(dropDownValue);
                  if (Value == 'Own') {
                    checkOwn = true;
                    checkTax = false;
                    print(checkOwn);
                  } else {
                    checkTax = true;
                    checkOwn = false;
                  }
                });
              },
              items: owntax
                  .map((OwnTitle) => DropdownMenuItem(
                      value: OwnTitle, child: Text("$OwnTitle")))
                  .toList(),
            ),
            SizedBox(height: 20),
            checkOwnField(),
            checkTaxField(),
          ],
        ),
      ),
    );
  }

  Widget checkOwnField() {
    return checkOwn
        ? Container(
            child: Column(
            children: [
              TextInputField(
                  controller: _seatingCapacityController,
                  myLabelText: "Seating Capacity"),
              SizedBox(height: 20),
              WithDriverDropField(),
            ],
          ))
        : Container();
  }

  Widget checkTaxField() {
    return checkTax
        ? Container(
            child: Column(
            children: [
              TonesOwnField(),
              // TextInputField(controller:_TaxCapacityController , myLabelText: "Loading Capacity")
            ],
          ))
        : Container();
  }
}
