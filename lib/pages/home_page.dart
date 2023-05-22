import 'package:advance_todo_app/config/my_colors.dart';
import 'package:advance_todo_app/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              authController.logOut();
            },
            icon: Icon(
              Icons.logout,
              color: whiteColor,
            ),
          ),
        ],
      ),
      body: Center(
        child: Text("Home page"),
      ),
    );
  }
}
