import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:onwer/object/textfield.dart';
import 'package:onwer/screen/details.dart';
import 'package:onwer/screen/photos_upload.dart';
import 'package:onwer/screen/tax_file_upload.dart';

import '../object/dropDownButtons/companydrop.dart';
import '../object/dropDownButtons/fueldrop.dart';
import '../object/dropDownButtons/ownTax.dart';
import '../object/dropDownButtons/withdriverdrop.dart';
import '../object/test.dart';
import 'own_file_upload.dart';

class AddVehicle extends StatefulWidget {
  AddVehicle({super.key});

  @override
  State<AddVehicle> createState() => _AddVehicleState();
}

class _AddVehicleState extends State<AddVehicle> {
  int _currentStep = 0;
  int _challansValue = 0;
  int _insurenceValue = 0;
  bool checkfield = false;
  TextEditingController _vehicalnameController = TextEditingController();
  TextEditingController _numberController = TextEditingController();
  TextEditingController _modelController = TextEditingController();
  TextEditingController _currentReadingController = TextEditingController();
  TextEditingController _rcNumberController = TextEditingController();
  TextEditingController _vehicleLocation = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: Icon(
          CupertinoIcons.back,
          color: Colors.black,
        ),
        title: Text(
          "VEHICLE DETAILS",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            // Implementation of icon stepper
            child: Stepper(
              controlsBuilder: (context, controller) {
                return const SizedBox.shrink();
              },
              elevation: 0,
              type: StepperType.horizontal,
              physics: ScrollPhysics(),
              currentStep: _currentStep,
              onStepTapped: (step) => tapped(step),
              steps: <Step>[
                Step(
                  title: Text('Details'),
                  content: Column(
                    children: [
                      DetailsPage(),
                      NextButton(0),
                    ],
                  ),
                  isActive: _currentStep > 0,
                  state:
                      _currentStep > 0 ? StepState.complete : StepState.editing,
                ),
                Step(
                  title: Text('Documents'),
                  content: Column(
                    children: [
                      // show the own_file_Upload or tax_file_Upload according to the selection
                      TaxFileUpload(),
                      NextButton(1),
                    ],
                  ),
                  isActive: _currentStep > 1,
                  state: _currentStep > 1
                      ? StepState.complete
                      : StepState.disabled,
                ),
                Step(
                  title: Text('Photos'),
                  content: Column(
                    children: <Widget>[
                      UploadPhotos(),
                      NextButton(2),
                    ],
                  ),
                  isActive: _currentStep > 2,
                  state: _currentStep > 2
                      ? StepState.complete
                      : StepState.disabled,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget NextButton(int currentStep) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.35,
            height: 55,
            child: _currentStep == 2
                ? ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      )),
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 15, 94, 159)),
                    ),
                    onPressed: () {
                      Get.defaultDialog(
                          title: "Submit Successfully",
                          middleText:
                              "You have uploaded all documents successfully. Verification will be done by Rush wheels within 24 hours.",
                          confirm: ElevatedButton(
                              onPressed: () {}, child: Text('Ok')));
                    },
                    child: Center(
                      child: Text(
                        "Submit",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                : ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      )),
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 15, 94, 159)),
                    ),
                    onPressed: () {
                      _currentStep < 2
                          ? setState(() => _currentStep += 1)
                          : null;
                    },
                    child: Center(
                      child: Text(
                        "Next",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
          ),
          _currentStep > 0
              ? InkWell(
                  onTap: () {
                    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 30),
                    padding: EdgeInsets.symmetric(vertical: 10),
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: 40,
                    child: Text(
                      "Prev",
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                )
              : Container(
                  width: 0,
                  height: 0,
                )
        ],
      ),
    );
  }

  tapped(int step) {
    setState(() => _currentStep = step);
  }
}
