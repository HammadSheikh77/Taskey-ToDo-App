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
          child: InkWell(
              onTap: () {
                Get.back();
              },
              child: Image.asset('assets/images/Cross.png')),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 135, top: 40),
            child: Image.asset('assets/images/View Profile.png'),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24, top: 25),
            child: Text(
              'Workspace',
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff002055),
                  fontWeight: FontWeight.bold),
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
              style: TextStyle(
                  fontSize: 18,
                  color: const Color(0xff002055),
                  fontWeight: FontWeight.bold),
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
