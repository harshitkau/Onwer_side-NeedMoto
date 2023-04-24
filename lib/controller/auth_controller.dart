import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onwer/screen/onwer_home.dart';
import 'package:onwer/screen/login.dart';

import '../model/user.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();

  // User state persistence
  late Rx<User?> _user;
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    _user = Rx<User?>(FirebaseAuth.instance.currentUser);
    _user.bindStream(FirebaseAuth.instance.authStateChanges());
    ever(_user, _setInitialView);
  }

  _setInitialView(User? user) {
    if (user == null) {
      Get.offAll(() => LoginScreen());
    } else {
      Get.offAll(() => OwnerHome(
            name: 'Harshit Kaushal',
            phoneNumber: '8726558201',
          ));
    }
  }

  //User Register

  void SignUp(
    String name,
    String email,
    String password,
    String phone_number,
  ) async {
    try {
      if (name.isNotEmpty &&
          email.isNotEmpty &&
          password.isNotEmpty &&
          phone_number.isNotEmpty) {
        UserCredential credential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);

        myUser user = myUser(
            name: name,
            email: email,
            uid: credential.user!.uid,
            phone_number: phone_number);

        await FirebaseFirestore.instance
            .collection('users')
            .doc(credential.user!.uid)
            .set(user.toJson());
      } else {
        Get.snackbar("Error Occurred", "Please Enter all feilds");
      }
    } catch (e) {
      print(e);
      Get.snackbar("Error Occurred", e.toString());
    }
  }

  // Login User
  void Login(String email, String password) async {
    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);
      } else {
        Get.snackbar("Error", "Please enter your email and password");
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }
}
