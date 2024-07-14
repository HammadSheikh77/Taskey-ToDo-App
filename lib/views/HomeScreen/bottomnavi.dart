import 'package:class_assigment/viewModels/BottomNavi_Controller.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Bottomnavi extends StatelessWidget {
  Bottomnavi({super.key});

  final BottomnaviController controller = Get.put(BottomnaviController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => CurvedNavigationBar(
          onTap: controller.onTapNav,
          index: controller.selectedIndex.value,
          height: 60,
          animationDuration: const Duration(milliseconds: 250),
          backgroundColor: Colors.black,
          items: const [
            Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
            Icon(
              Icons.folder_open_outlined,
              color: Colors.black,
            ),
            Icon(
              Icons.add_circle_outline,
              color: Colors.black,
            ),
            Icon(
              Icons.chat_bubble_outline,
              color: Colors.black,
            ),
            Icon(
              Icons.person_2_outlined,
              color: Colors.black,
            ),
          ],
        ),
      ),
      body: Obx(
        () => controller.pages[controller.selectedIndex.value],
      ),
    );
  }
}
