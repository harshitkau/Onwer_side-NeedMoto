import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/filecontroller.dart';
import '../controller/imagecontroller.dart';
import '../object/kycdocupload.dart';
import '../object/uploadFile.dart';

class OwnFileUpload extends StatefulWidget {
  const OwnFileUpload({super.key});

  @override
  State<OwnFileUpload> createState() => _OwnFileUploadState();
}

class _OwnFileUploadState extends State<OwnFileUpload> {
  final imageController = Get.put(ImageController());
  final FileController fileController =
      Get.put(FileController('qFm8nd1BODSFfJLEsGNFLzjbOiN2'));
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // UploadDocument(
        //   showexp: false,
        //   filename: "Vehical RC Front",
        //   filetype: "IMG",
        // ),
        KycUploadDocumentTile(
            fileName: 'Vehical RC Front', fileController: fileController),
        SizedBox(height: 20),
        KycUploadDocumentTile(
            fileName: 'Vehical RC Back', fileController: fileController),
        // UploadDocument(
        //   showexp: false,
        //   filename: "Vehical RC Back",
        //   filetype: "IMG",
        // ),
        SizedBox(height: 20),
        KycUploadDocumentTile(
            fileName: 'Vehicle insurance', fileController: fileController),
        // UploadDocument(
        //   showexp: false,
        //   filename: "Vehicle insurance",
        //   filetype: "PDF",
        // ),
        SizedBox(height: 20),
        KycUploadDocumentTile(
            fileName: 'Polution', fileController: fileController),
        // UploadDocument(
        //   showexp: false,
        //   filename: "Polution",
        //   filetype: "IMG",
        // ),
        SizedBox(height: 20),
        KycUploadDocumentTile(
            fileName: 'Your aadar card', fileController: fileController),
        // UploadDocument(
        //   showexp: false,
        //   filename: "Your aadar card",
        //   filetype: "IMG",
        // ),
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
