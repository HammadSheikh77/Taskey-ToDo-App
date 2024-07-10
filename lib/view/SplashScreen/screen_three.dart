import 'package:class_assigment/view/Login&Signup/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _Screen3State();
}

class _Screen3State extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset('assets/images/Circle.png'),
                Padding(
                  padding: const EdgeInsets.only(top: 155),
                  child: Center(
                      child: Image.asset('assets/images/Image 1 sc3.png')),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 240, top: 276),
                  child: Image.asset('assets/images/Image 2 sc3.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 130),
                  child: Image.asset('assets/images/Image 3 sc3.png'),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Image.asset('assets/images/Text sc3.png'),
            ),
            Container(
                padding: const EdgeInsets.only(left: 30, top: 15),
                child: Image.asset('assets/images/Slidebar sc3.png')),
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
                    Get.to(const LoginScreen());
                  },
                  child: Image.asset('assets/images/Next Button.png')),
            )
          ],
        ),
      ),
    );
  }
}
