import 'package:advance_todo_app/config/my_theme.dart';
import 'package:advance_todo_app/pages/home_page.dart';
import 'package:advance_todo_app/pages/splace_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Advance todo',
      theme: lightTheme,
      home: SplacePage(),
    );
  }
}
