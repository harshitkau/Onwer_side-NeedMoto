import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:onwer/model/user.dart';

class VehicleDetails {
  String vehicle_name;
  String vehicle_company;
  String vehicle_number;
  String vehicle_model;
  String current_reading;
  String vechicle_Rc_number;
  // String fuel_type;
  // String own_plate;
  // bool pending_challans;
  // bool insurence_vehicle;
  String vehicle_location;

  VehicleDetails({
    required this.vehicle_name,
    required this.vehicle_company,
    required this.vehicle_number,
    required this.vehicle_model,
    required this.current_reading,
    required this.vechicle_Rc_number,
    // required this.fuel_type,
    // required this.own_plate,
    // required this.pending_challans,
    // required this.insurence_vehicle,
    required this.vehicle_location,
  });

  //App - Firebase(Map)
  Map<String, dynamic> toJson() => {
        "vehicle_name": vehicle_name,
        "vehicle_company": vehicle_company,
        "vehicle_number": vehicle_number,
        "vehicle_model": vehicle_model,
        "current_reading": current_reading,
        "vechicle_Rc_number": vechicle_Rc_number,
        // "fuel_type": fuel_type,
        // "own_plate": own_plate,
        // "pending_challans": pending_challans,
        // "insurence_vehicle": insurence_vehicle,
        "vehicle_location": vehicle_location,
      };

  //Firebase(Map) - App(User)
  static VehicleDetails fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return VehicleDetails(
      vehicle_name: snapshot["vehicle_name"],
      vehicle_company: snapshot['vehicle_company'],
      vehicle_number: snapshot['vehicle_number'],
      vehicle_model: snapshot['vehicle_model'],
      current_reading: snapshot['current_reading'],
      vechicle_Rc_number: snapshot['vechicle_Rc_number'],
      // fuel_type: snapshot['fuel_type'],
      // own_plate: snapshot['own_plate'],
      // pending_challans: snapshot['pending_challans'],
      // insurence_vehicle: snapshot['insurence_vehicle'],
      vehicle_location: snapshot['vehicle_location'],
    );
  }
}
