import 'package:class_assigment/view/Login&Signup/login_screen.dart';
import 'package:class_assigment/view/SplashScreen/Screen_two.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _Screen1State();
}

class _Screen1State extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset('assets/images/Circle.png'),
                Container(
                    padding: const EdgeInsets.only(left: 127, top: 70),
                    child: Image.asset('assets/images/Image 3.png')),
                Container(
                  padding: const EdgeInsets.only(left: 26, top: 180),
                  child: Image.asset('assets/images/Image 2.png'),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 144, top: 266),
                  child: Image.asset('assets/images/Image 1.png'),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Image.asset('assets/images/Text.png'),
            ),
            Container(
                padding: const EdgeInsets.only(left: 30, top: 15),
                child: Image.asset('assets/images/Sliedbar.png')),
            Padding(
                padding: const EdgeInsets.only(left: 30, top: 25),
                child: InkWell(
                    onTap: () {
                      Get.to(const LoginScreen());
                    },
                    child: const Text(
                      'Skip',
                      style: TextStyle(fontSize: 14),
                    ))),
            Padding(
              padding: const EdgeInsets.only(left: 310),
              child: InkWell(
                  onTap: () {
                    Get.to(const ScreenTwo());
                  },
                  child: Image.asset('assets/images/Next Button.png')),
            )
          ],
        ),
      ),
    );
  }
}
