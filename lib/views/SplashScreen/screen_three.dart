import 'package:class_assigment/views/Login&Signup/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

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
                    'Manage your',
                    style: TextStyle(fontSize: 35),
                  ),
                  Row(
                    children: [
                      Text(
                        'Tasks\t',
                        style:
                            TextStyle(fontSize: 35, color: Color(0xff756EF3)),
                      ),
                      Text(
                        'quickly for',
                        style: TextStyle(fontSize: 35),
                      ),
                    ],
                  ),
                  Text(
                    'Results✌',
                    style: TextStyle(fontSize: 35),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 15),
              child: Image.asset('assets/images/Slidebar sc3.png'),
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
                    Get.to(LoginScreen());
                  },
                  child: Image.asset('assets/images/Next Button.png')),
            )
          ],
        ),
      ),
    );
  }
}
