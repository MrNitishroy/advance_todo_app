import 'package:advance_todo_app/pages/home_page.dart';
import 'package:advance_todo_app/pages/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final auth = FirebaseAuth.instance;

  void login() async {
    try {
      await auth.signInWithEmailAndPassword(
          email: email.text, password: password.text);
      Get.offAll(HomePage());
    } catch (e) {
      Get.snackbar(
        "Error",
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  void signup() async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email.text, password: password.text);
      Get.snackbar(
        "Login Success ",
        "Please wait",
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
      Get.to(LoginPage());
    } catch (e) {
      Get.snackbar(
        "Error",
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  void logOut() async {
    await auth.signOut();
    Get.offAll(LoginPage());
  }
}
