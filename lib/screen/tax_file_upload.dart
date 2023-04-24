import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import '../object/uploadFile.dart';

class TaxFileUpload extends StatelessWidget {
  const TaxFileUpload({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UploadDocument(
          filename: "Vehical RC Front",
          filetype: "IMG",
          showexp: false,
        ),
        SizedBox(height: 20),
        UploadDocument(
          filename: "Vehical RC Back",
          filetype: "IMG",
          showexp: false,
        ),
        SizedBox(height: 20),
        UploadDocument(
          filename: "Vehicle insurance",
          filetype: "PDF",
          showexp: true,
        ),
        SizedBox(height: 20),
        UploadDocument(
          filename: "Your aadar card",
          filetype: "IMG",
          showexp: false,
        ),
        SizedBox(height: 20),
        UploadDocument(
          filename: "Fitness certificate",
          filetype: "PDF",
          showexp: true,
        ),
        SizedBox(height: 20),
        UploadDocument(
          filename: "Tax document",
          filetype: "PDF",
          showexp: true,
        ),
        SizedBox(height: 20),
        UploadDocument(
          filename: "Polution",
          filetype: "IMG",
          showexp: false,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
              color: Colors.red[50],
              border: Border.all(color: Colors.red),
              borderRadius: BorderRadius.circular(10)),
          child: const Text(
            "* Your documents should be in pdf / jpg / png and size should be more than 2mb",
            textAlign: TextAlign.justify,
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
