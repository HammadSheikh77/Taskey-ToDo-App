import 'package:class_assigment/views/ProfileScreen/setting_screen.dart';
import 'package:class_assigment/widgets/profilescrwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 159, top: 72),
              child: Text(
                'Profile',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 66),
                  child: Image.asset('assets/images/Group 1000000790.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 150, top: 50),
                  child: Image.asset('assets/images/profile pic.png'),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 120),
              child: Text(
                'Alvart Ainstain',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 150),
              child: Text(
                '@albart.ainstain',
                style: TextStyle(fontSize: 12, color: Color(0xff848A94)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 161, top: 10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Color(0xff756EF3)),
                  ),
                  onPressed: () {},
                  child: const Text('Edit')),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 94, top: 20),
                  child: Icon(Icons.access_time),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 142),
                  child: Icon(Icons.check_circle_outline),
                ),
              ],
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 98),
                  child: Text(
                    '5',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 148),
                  child: Text(
                    '25',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 78),
                  child: Text(
                    'On Going',
                    style: TextStyle(fontSize: 12, color: Color(0xff848A94)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 100),
                  child: Text(
                    'Total Complete',
                    style: TextStyle(fontSize: 12, color: Color(0xff848A94)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Profilescrwidget(
                      tittle: 'My Project',
                      icon: const Icon(Icons.arrow_forward_ios_outlined,),
                      onTap: () {}),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Profilescrwidget(
                      tittle: 'Join a Team',
                      icon: const Icon(Icons.arrow_forward_ios_outlined,),
                      onTap: () {}),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Profilescrwidget(
                      tittle: 'Settings',
                      icon: const Icon(Icons.arrow_forward_ios_outlined,),
                      onTap: () {
                        Get.to(SettingScreen());
                      }),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Profilescrwidget(
                      tittle: 'My Task',
                      icon: const Icon(Icons.arrow_forward_ios_outlined,),
                      onTap: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
