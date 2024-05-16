import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/pages/home_page.dart';

import 'controller/public_controller.dart';

void main() {
  runApp(const MyApp());
  final PublicController publicController = Get.put(PublicController());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,

    );
  }
}
