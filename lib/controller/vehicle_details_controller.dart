import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:onwer/model/vehicle_details.dart';

class VehicleDetailsController extends GetxController {
  static VehicleDetailsController instance = Get.find();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  void details(
    String vehicle_name,
    String vehicle_company,
    String vehicle_number,
    String vehicle_model,
    String current_reading,
    String vechicle_Rc_number,
    // String fuel_type,
    // String own_plate,
    // bool pending_challans,
    // bool insurence_vehicle,
    String vehicle_location,
  ) async {
    try {
      if (vehicle_name.isNotEmpty &&
          vehicle_company.isNotEmpty &&
          vehicle_number.isNotEmpty &&
          vehicle_model.isNotEmpty &&
          current_reading.isNotEmpty &&
          vechicle_Rc_number.isNotEmpty &&

          // fuel_type.isNotEmpty &&
          // own_plate.isNotEmpty &&
          // pending_challans == true &&
          // insurence_vehicle == true &&
          vehicle_location.isNotEmpty) {
        final User? current_user = _auth.currentUser;
        VehicleDetails user_vehicleDetails = VehicleDetails(
          vehicle_name: vehicle_name,
          vehicle_company: vehicle_company,
          vehicle_number: vehicle_number,
          vehicle_model: vehicle_model,
          current_reading: current_reading,
          vechicle_Rc_number: vechicle_Rc_number,
          // fuel_type: fuel_type,
          // own_plate: own_plate,
          // pending_challans: pending_challans,
          // insurence_vehicle: insurence_vehicle,
          vehicle_location: vehicle_location,
        );

        await FirebaseFirestore.instance
            .collection('users')
            .doc(current_user!.uid)
            .collection("vehicle_details")
            .doc()
            .set(user_vehicleDetails.toJson());
      } else {
        Get.snackbar("Error Occurred", "Please Enter all feilds");
      }
    } catch (e) {
      print(e);
      Get.snackbar("Error Occurred", e.toString());
    }
  }
}
