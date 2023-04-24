import 'package:flutter/material.dart';

class WithDriverDropField extends StatefulWidget {
  const WithDriverDropField({super.key});

  @override
  State<WithDriverDropField> createState() => _WithDriverDropFieldState();
}

class _WithDriverDropFieldState extends State<WithDriverDropField> {
  String dropDownValue = "";
  List<String> driverType = [
    'With Driver',
    'Without Driver',
    'Door Step available',
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
                hintText: "With",
              ),
              // value: dropDownValue,
              onChanged: (Value) {
                setState(() {
                  dropDownValue = Value!;
                });
              },
              items: driverType
                  .map((DriverTitle) => DropdownMenuItem(
                      value: DriverTitle, child: Text("$DriverTitle")))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
