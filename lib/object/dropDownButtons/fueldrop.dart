import 'package:flutter/material.dart';

class FuelDropField extends StatefulWidget {
  const FuelDropField({super.key});

  @override
  State<FuelDropField> createState() => _FuelDropFieldState();
}

class _FuelDropFieldState extends State<FuelDropField> {
  String dropDownValue = "";
  List<String> FuelType = [
    'Diesel',
    'Petrol',
    'Electric',
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
                hintText: "Fuel Type",
              ),
              // value: dropDownValue,
              onChanged: (Value) {
                setState(() {
                  dropDownValue = Value!;
                });
              },
              items: FuelType.map((FuelTitle) => DropdownMenuItem(
                  value: FuelTitle, child: Text("$FuelTitle"))).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
