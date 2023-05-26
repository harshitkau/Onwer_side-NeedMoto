import 'package:get/get.dart';

class ScratchesDropdownController extends GetxController {
  var selectedVal = ''.obs;
  List<String> options = ['Yes', 'No'];

  void setValue(String value) {
    selectedVal.value = value;
  }
}
