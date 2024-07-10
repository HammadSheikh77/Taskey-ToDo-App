import 'package:class_assigment/view/Login&Signup/login_screen.dart';
import 'package:class_assigment/view/SplashScreen/screen_three.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _Screen2State();
}

class _Screen2State extends State<ScreenTwo> {
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
                Padding(
                  padding: const EdgeInsets.only(top: 115),
                  child: Center(
                      child: Image.asset('assets/images/Image box 1.png')),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 205, left: 245),
                  child: Image.asset('assets/images/Image box 2.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 140, left: 10),
                  child: Image.asset('assets/images/Image box 3.png'),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Image.asset('assets/images/Text sc2.png'),
            ),
            Container(
                padding: const EdgeInsets.only(left: 30, top: 15),
                child: Image.asset('assets/images/Sliedbar sc2.png')),
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
                    Get.to(const ScreenThree());
                  },
                  child: Image.asset('assets/images/Next Button.png')),
            )
          ],
        ),
      ),
    );
  }
}
