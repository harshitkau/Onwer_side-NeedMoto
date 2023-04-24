import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/tiledocumentcontroller.dart';

class UploadDocument extends StatelessWidget {
  UploadDocument(
      {super.key,
      required this.filename,
      required this.filetype,
      required this.showexp});
  String filename;
  String filetype;
  bool showexp;

  final TileDocumentController tileDocController =
      Get.put(TileDocumentController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListTile(
        leading: Container(
          width: 60,
          height: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(184, 5, 67, 153)),
          child: Center(
              child: Text(
            filetype,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          )),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  filename,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black45,
                      fontWeight: FontWeight.w400),
                ),
                Text('2.5 MB'),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            LinearProgressIndicator(value: tileDocController.progressBar.value),
            SizedBox(height: 5),
            // Text(
            //   "This document should be more than 2mb",
            //   style: TextStyle(
            //       fontSize: 12, color: Colors.red, fontWeight: FontWeight.w500),
            // ),

            showexp ? expDate() : Container(),
          ],
        ),
      ),
    );
  }

  Widget expDate() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Exp Date:",
          style: TextStyle(
              fontWeight: FontWeight.w500, color: Colors.black45, fontSize: 14),
        ),
        SizedBox(width: 5),
        Container(
          child: Row(children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color.fromARGB(176, 232, 255, 59)),
              child: Text(
                "DD",
                style: TextStyle(fontSize: 13),
              ),
            ),
            SizedBox(width: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color.fromARGB(176, 232, 255, 59)),
              child: Text(
                "MM",
                style: TextStyle(fontSize: 13),
              ),
            ),
            SizedBox(width: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color.fromARGB(176, 232, 255, 59)),
              child: Text(
                "YYYY",
                style: TextStyle(fontSize: 13),
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
