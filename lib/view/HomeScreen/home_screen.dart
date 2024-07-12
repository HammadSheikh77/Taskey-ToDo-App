import 'package:bottom_bar_matu/bottom_bar_double_bullet/bottom_bar_double_bullet.dart';
import 'package:bottom_bar_matu/bottom_bar_item.dart';
import 'package:class_assigment/view/HomeScreen/menu_screen.dart';
import 'package:class_assigment/widgets/card.dart';
import 'package:class_assigment/widgets/inprogress.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 24,
          ),
          child: InkWell(
              onTap: () {
                Get.to(const MenuScreen());
              },
              child: Image.asset('assets/icons/Menu.png')),
        ),
        title: const Padding(
          padding: EdgeInsets.only(
            left: 90,
          ),
          child: Text(
            'Friday, 26',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Image.asset('assets/icons/Notifications.png'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 19, top: 30),
                  child: Image.asset('assets/images/Home Ellipse.png'),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 24, top: 50),
                  child: Text(
                    'Let’s make a\nhabits together  🙌',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  cardWidget(
                    heading: 'Application Design',
                    textColor: Color(0xffFFFFFF),
                    containerColor: Color(0xff756EF3),
                  ),
                  cardWidget(
                    heading: 'Overlayout',
                    textColor: Color(0xff002055),
                    containerColor: Color(0xffFFFFFF),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 41),
              child:
                  Center(child: Image.asset('assets/images/In Progress.png')),
            ),
            const InprogressWidget(
              heading: 'Productivity Mobile App',
              tittle: 'Create Detail Booking',
              time: '2 min ago',
              count: 0.60,
              progressText: '60%',
              radius: 30,
            ),
            const InprogressWidget(
              heading: 'Banking Mobile App',
              tittle: 'Revision Home Page',
              time: '5 min ago',
              count: 0.70,
              progressText: '70%',
              radius: 30,
            ),
            const InprogressWidget(
              heading: 'Online Course',
              tittle: 'Working On Landing Page',
              time: '7 min ago',
              count: 0.80,
              progressText: '80%',
              radius: 30,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBarDoubleBullet(
        items: [
          BottomBarItem(iconData: Icons.home_outlined),
          BottomBarItem(iconData: Icons.folder_open_outlined),
          BottomBarItem(iconData: Icons.add_circle_outline),
          BottomBarItem(iconData: Icons.chat_bubble_outline),
          BottomBarItem(iconData: Icons.person_2_outlined),
        ],
      ),
    );
  }
}
