import 'package:class_assigment/viewModels/BottomNavi_Controller.dart';
import 'package:class_assigment/views/AddScreen/addScreen.dart';
import 'package:class_assigment/widgets/bottomsheet.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Bottomnavi extends StatelessWidget {
  Bottomnavi({super.key});

  final BottomnaviController controller = Get.put(BottomnaviController());

  @override
  Widget build(BuildContext context) {
    final isLightTheme = Theme.of(context).brightness == Brightness.light;
    return Scaffold(
      bottomNavigationBar: Obx(
        () => CurvedNavigationBar(
          onTap: controller.onTapNav,
          index: controller.selectedIndex.value,
          height: 60,
          animationDuration: const Duration(milliseconds: 250),
          backgroundColor: Colors.black,
          items: [
            const Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
            const Icon(
              Icons.folder_open_outlined,
              color: Colors.black,
            ),
            IconButton(
                onPressed: () {
                  Get.bottomSheet(
                    backgroundColor: isLightTheme ? Colors.white : Colors.black,
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Image.asset('assets/images/Rectangle 857.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 10, right: 10),
                          child: Bottomsheet(
                              icon: const Icon(Icons.edit_square),
                              tittle: 'Create Task',
                              onTap: () {
                                Get.to(AddTask());
                              }),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 10, right: 10),
                          child: Bottomsheet(
                              icon: const Icon(Icons.add_circle_outline_sharp),
                              tittle: 'Create Project',
                              onTap: () {}),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 10, right: 10),
                          child: Bottomsheet(
                              icon: const Icon(Icons.people_outline),
                              tittle: 'Create Team',
                              onTap: () {}),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 10, right: 10),
                          child: Bottomsheet(
                              icon: const Icon(Icons.access_time),
                              tittle: 'Create Event',
                              onTap: () {}),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: Image.asset('assets/icons/Delete.png')),
                        ),
                      ],
                    ),
                  );
                },
                icon: const Icon(
                  Icons.add_circle_outline,
                  color: Colors.black,
                )),
            const Icon(
              Icons.chat_bubble_outline,
              color: Colors.black,
            ),
            const Icon(
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
