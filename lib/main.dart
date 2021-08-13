import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:my_todo/views/screens/task_screen.dart';
import 'package:get/get.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: TaskScreen(),
    );
  }
}

