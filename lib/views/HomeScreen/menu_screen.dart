import 'package:class_assigment/views/ProfileScreen/editProfile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.cancel_outlined))),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 150, top: 40),
            child: Image.asset('assets/images/profile pic.png'),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 140),
            child: Text(
              'Alvart Ainstain',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 155),
            child: Text(
              '@albart.ainstain',
              style: TextStyle(fontSize: 12),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 140, top: 10),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Color(0xff756EF3)),
                ),
                onPressed: () {
                  Get.to(const EditprofileScreen());
                },
                child: const Text('View Profile')),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24, top: 25),
            child: Text(
              'Workspace',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 10),
            child: Image.asset('assets/images/Group 1000000778.png'),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24, top: 25),
            child: Text(
              'Manage',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/Group 1000000780.png'),
                Image.asset('assets/images/Group 1000000781.png')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/Group 1000000782.png'),
                Image.asset('assets/images/Group 1000000783.png')
              ],
            ),
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Image.asset('assets/icons/logout Button.png'),
          ))
        ],
      ),
    );
  }
}
