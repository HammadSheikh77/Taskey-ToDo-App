import 'package:class_assigment/viewModels/Theme_Controller.dart';
import 'package:class_assigment/views/SplashScreen/splash_screen.dart';
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
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeController().themeMode.value,
      initialBinding: BindingsBuilder(() {
        Get.put(ThemeController());
      }),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
