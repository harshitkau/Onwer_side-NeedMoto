import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TileDocumentController extends GetxController{
  // var to handle value of progess bar
  var progressBar = 0.0.obs;

  // var to handle text fields
  var textField1Value = "".obs;
  var textField2Value = "".obs;


  //method to update the value of progress bar
   void updateProgress(double value)
   {
     progressBar.value = value;
   }

   //method to update value of textfields
  void updateTextField1(String value) {
    textField1Value.value = value;
  }

  void updateTextField2(String value) {
    textField2Value.value = value;
  }
}