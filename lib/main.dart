import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onwer/screen/onwer_home.dart';
import 'package:onwer/screen/login.dart';
import 'package:onwer/screen/add_vehicle.dart';
import 'package:onwer/screen/signup.dart';

import 'controller/auth_controller.dart';
import 'controller/kycController.dart';
import 'controller/vehicle_details_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) {
    Get.put(AuthController());
    Get.put(VehicleDetailsController());
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        initialRoute: '/signup',
        debugShowCheckedModeBanner: false,
        getPages: [
          GetPage(name: '/signup', page: () => SignUpScreen()),
          GetPage(name: '/login', page: () => LoginScreen()),
        ]);
  }
}
