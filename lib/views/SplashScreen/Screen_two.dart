import 'package:class_assigment/views/Login&Signup/login_screen.dart';
import 'package:class_assigment/views/SplashScreen/screen_three.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

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
            const Padding(
              padding: EdgeInsets.only(left: 25, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Task Management',
                    style: TextStyle(fontSize: 18, color: Color(0xff756EF3)),
                  ),
                  Text(
                    'Work more',
                    style: TextStyle(fontSize: 35),
                  ),
                  Row(
                    children: [
                      Text(
                        'Structured\t',
                        style:
                            TextStyle(fontSize: 35, color: Color(0xff756EF3)),
                      ),
                      Text(
                        'and',
                        style: TextStyle(fontSize: 35),
                      ),
                    ],
                  ),
                  Text(
                    'Organized 👌',
                    style: TextStyle(fontSize: 35),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 15),
              child: Image.asset('assets/images/Sliedbar sc2.png'),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 30, top: 25),
                child: InkWell(
                    onTap: () {
                      Get.to(LoginScreen());
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
