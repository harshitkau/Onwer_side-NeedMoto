import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onwer/screen/onwer_home.dart';

import '../../object/textfield.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController _oldPasswordController = TextEditingController();
  TextEditingController _newPasswordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
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
          "CHANGE PASSWORD",
          style: TextStyle(color: Colors.black),
        ),
        surfaceTintColor: Colors.black,
        elevation: 1,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextInputField(
              myLabelText: "Old Password",
              controller: _oldPasswordController,
            ),
            SizedBox(height: 25),
            TextInputField(
              myLabelText: "New Password",
              controller: _newPasswordController,
            ),
            SizedBox(height: 25),
            TextInputField(
              myLabelText: "Confirm Password",
              controller: _confirmPasswordController,
              obscuretext: true,
            ),
            SizedBox(height: 25),
            _submitButton(context)
          ],
        ),
      ),
    );
  }

  Widget _submitButton(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width * 0.8,
      height: 60,
      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            )),
            backgroundColor:
                MaterialStateProperty.all(Color.fromARGB(255, 0, 15, 112))),
        onPressed: () => _showDialog(context),
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

  _showDialog(BuildContext context) {
    return showDialog(
      builder: (context) => CupertinoAlertDialog(
        title: Column(
          children: <Widget>[
            Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 100,
            ),
            SizedBox(height: 10),
          ],
        ),
        content: new Text(
          "Password Chnage \n Successfully",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        actions: <Widget>[
          CupertinoDialogAction(
            child: Text("OK"),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => OwnerHome()));
            },
          ),
        ],
      ),
      context: context,
    );
  }
}
