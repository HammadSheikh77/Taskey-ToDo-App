import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditprofileScreen extends StatelessWidget {
  const EditprofileScreen({super.key});

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
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 90),
          child: Text(
            'Edit Profile',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text(
              'Save',
              style: TextStyle(fontSize: 14, color: Color(0xff756EF3)),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Image.asset('assets/images/Profile Photo.png'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24, top: 20),
            child: Text(
              'Name',
              style: TextStyle(fontSize: 14, color: Color(0xff848A94)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
            child: TextFormField(
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(80))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(80))),
                hintText: 'Enter Your Name',
                prefixIcon: Icon(Icons.person_2_outlined),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24, top: 20),
            child: Text(
              'Email',
              style: TextStyle(fontSize: 14, color: Color(0xff848A94)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
            child: TextFormField(
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(80))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(80))),
                hintText: 'Enter Your Emai',
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24, top: 20),
            child: Text(
              'Username',
              style: TextStyle(fontSize: 14, color: Color(0xff848A94)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
            child: TextFormField(
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(80))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(80))),
                hintText: 'Enter Your Username',
                prefixIcon: Icon(Icons.person_2_outlined),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24, top: 20),
            child: Text(
              'Number',
              style: TextStyle(fontSize: 14, color: Color(0xff848A94)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
            child: TextFormField(
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(80))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(80))),
                hintText: 'Enter Your Number',
                prefixIcon: Icon(Icons.numbers_outlined),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
