import 'package:flutter/material.dart';

import '../object/uploadFile.dart';

class OwnFileUpload extends StatelessWidget {
  const OwnFileUpload({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UploadDocument(
          showexp: false,
          filename: "Vehical RC Front",
          filetype: "IMG",
        ),
        SizedBox(height: 20),
        UploadDocument(
          showexp: false,
          filename: "Vehical RC Back",
          filetype: "IMG",
        ),
        SizedBox(height: 20),
        UploadDocument(
          showexp: false,
          filename: "Vehicle insurance",
          filetype: "PDF",
        ),
        SizedBox(height: 20),
        UploadDocument(
          showexp: false,
          filename: "Polution",
          filetype: "IMG",
        ),
        SizedBox(height: 20),
        UploadDocument(
          showexp: false,
          filename: "Your aadar card",
          filetype: "IMG",
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
              color: Colors.red[50],
              border: Border.all(color: Colors.red),
              borderRadius: BorderRadius.circular(10)),
          child: Text(
            "* Your documents should be in pdf / jpg / png and size should be more than 2mb",
            textAlign: TextAlign.justify,
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
