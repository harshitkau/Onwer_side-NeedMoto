import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/filecontroller.dart';
import '../controller/imagecontroller.dart';
import '../object/kycdocupload.dart';

class TaxFileUpload extends StatefulWidget {
  const TaxFileUpload({super.key});

  @override
  State<TaxFileUpload> createState() => _TaxFileUploadState();
}

class _TaxFileUploadState extends State<TaxFileUpload> {
  final imageController = Get.put(ImageController());
  final FileController fileController =
      Get.put(FileController('qFm8nd1BODSFfJLEsGNFLzjbOiN2'));
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // UploadDocument(
        //   filename: "Vehical RC Front",
        //   filetype: "IMG",
        //   showexp: false,
        // ),
        KycUploadDocumentTile(
            fileName: 'Vehical RC Front', fileController: fileController),
        SizedBox(height: 20),
        KycUploadDocumentTile(
            fileName: 'Vehical RC Back', fileController: fileController),
        // UploadDocument(
        //   filename: "Vehical RC Back",
        //   filetype: "IMG",
        //   showexp: false,
        // ),
        SizedBox(height: 20),
        // UploadDocument(
        //   filename: "Vehicle insurance",
        //   filetype: "PDF",
        //   showexp: true,
        // ),
        KycUploadDocumentTile(
            fileName: 'Vehicle insurance', fileController: fileController),
        SizedBox(height: 20),
        // UploadDocument(
        //   filename: "Your aadar card",
        //   filetype: "IMG",
        //   showexp: false,
        // ),
        KycUploadDocumentTile(
            fileName: 'Your aadar card', fileController: fileController),
        SizedBox(height: 20),
        // UploadDocument(
        //   filename: "Fitness certificate",
        //   filetype: "PDF",
        //   showexp: true,
        // ),
        KycUploadDocumentTile(
            fileName: 'Fitness certificate', fileController: fileController),
        SizedBox(height: 20),
        // UploadDocument(
        //   filename: "Tax document",
        //   filetype: "PDF",
        //   showexp: true,
        // ),
        KycUploadDocumentTile(
            fileName: 'Tax document', fileController: fileController),
        SizedBox(height: 20),
        // UploadDocument(
        //   filename: "Polution",
        //   filetype: "IMG",
        //   showexp: false,
        // ),
        KycUploadDocumentTile(
            fileName: 'Polution', fileController: fileController),
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
