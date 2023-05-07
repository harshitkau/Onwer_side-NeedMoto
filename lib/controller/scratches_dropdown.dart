import 'package:get/get.dart';

class ScratchesDropdownController extends GetxController {
  var selectedVal = ''.obs;
  List<String> options = ['Scratches', '2', '4', '6'];

  void setValue(String value) {
    selectedVal.value = value;
  }
}
