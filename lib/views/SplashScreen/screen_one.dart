import 'package:class_assigment/views/Login&Signup/login_screen.dart';
import 'package:class_assigment/views/SplashScreen/Screen_two.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

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
                  padding: const EdgeInsets.only(left: 127, top: 70),
                  child: Image.asset('assets/images/Image 3.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 26, top: 180),
                  child: Image.asset('assets/images/Image 2.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 144, top: 266),
                  child: Image.asset('assets/images/Image 1.png'),
                ),
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
                    'Let’s create a',
                    style: TextStyle(fontSize: 35),
                  ),
                  Row(
                    children: [
                      Text(
                        'space\t',
                        style:
                            TextStyle(fontSize: 35, color: Color(0xff756EF3)),
                      ),
                      Text(
                        'for your',
                        style: TextStyle(fontSize: 35),
                      ),
                    ],
                  ),
                  Text(
                    'workflows',
                    style: TextStyle(fontSize: 35),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 15),
              child: Image.asset('assets/images/Sliedbar.png'),
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
                    Get.to(const ScreenTwo());
                  },
                  child: Image.asset(
                    'assets/images/Next Button.png',
                  )),
            )
          ],
        ),
      ),
    );
  }
}
