import 'package:advance_todo_app/components/my_button.dart';
import 'package:advance_todo_app/components/my_text_form_field.dart';
import 'package:advance_todo_app/config/my_colors.dart';
import 'package:advance_todo_app/controller/auth_controller.dart';
import 'package:advance_todo_app/controller/todo_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    TodoController todoController = Get.put(TodoController());
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
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text("Add Todo"),
              SizedBox(height: 10),
              MyTextFormField(
                controller: todoController.title,
                lable: "Add Todo",
              ),
              SizedBox(height: 20),
              MyButton(
                btnName: "Add Todo",
                onPress: () {},
              ),
              SizedBox(height: 20),
              const Row(
                children: [
                  Text("All Todo"),
                ],
              ),
              SizedBox(height: 10),
              Expanded(
                  child: Column(
                children: [
                  ListTile(
                    tileColor: whiteColor,
                    onTap: () {},
                    leading: Icon(Icons.task_alt_outlined),
                    title: Text(
                      "Coocking and Baking",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    trailing: InkWell(
                      child: Icon(Icons.delete),
                    ),
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    tileColor: whiteColor,
                    onTap: () {},
                    leading: Icon(Icons.task_alt_outlined),
                    title: Text(
                      "Coocking and Baking",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    trailing: InkWell(
                      child: Icon(Icons.delete),
                    ),
                  ),
                ],
              )),
            ],
          ),
        ));
  }
}
