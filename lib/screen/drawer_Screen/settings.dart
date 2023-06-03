import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'change_password.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

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
            "SETTINGS",
            style: TextStyle(color: Colors.black),
          ),
          surfaceTintColor: Colors.black,
          elevation: 1,
        ),
        body: ListView(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChangePassword()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 17),
                child: Text(
                  "Change Password",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Divider(
              color: Colors.black45,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 17),
              child: Text(
                "Language",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              color: Colors.black45,
            ),
          ],
        ));
  }
}
