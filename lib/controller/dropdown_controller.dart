import 'package:get/get.dart';

class DropdownController extends GetxController {
  var selectedVal = ''.obs;
  List<String> options = ['Select seat', '2', '4', '6'];

  void setValue(String value) {
    selectedVal.value = value;
  }
}
