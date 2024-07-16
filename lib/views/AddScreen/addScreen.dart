import 'package:class_assigment/widgets/boardwidget.dart';
import 'package:class_assigment/widgets/datepicker.dart';
import 'package:class_assigment/widgets/timepicker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

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
            'Add Task',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 24, top: 40),
            child: Text(
              'Task Name',
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
                hintText: 'Enter Your Task Name',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24, top: 40),
            child: Text(
              'Task Members',
              style: TextStyle(fontSize: 14, color: Color(0xff848A94)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 10),
            child: Row(
              children: [
                Image.asset('assets/images/Chat profile 1.png'),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Image.asset('assets/images/Chat profile 4.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Image.asset('assets/images/Chat profile 2.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Image.asset('assets/images/Chat profile 3.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: InkWell(
                      onTap: () {},
                      child: Image.asset('assets/icons/Group 1000000749.png')),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 28),
            child: Text(
              'Jeny\t\t\tmehrin\t\t\t\tAvishek\t\t\t\tJafor',
              style: TextStyle(fontSize: 14, color: Color(0xff848A94)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24, top: 40),
            child: Text(
              'Date',
              style: TextStyle(fontSize: 14, color: Color(0xff848A94)),
            ),
          ),
          const Datepicker(),
          const Padding(
            padding: EdgeInsets.only(top: 40, left: 24),
            child: Row(
              children: [
                Text(
                  'Start Time',
                  style: TextStyle(fontSize: 14, color: Color(0xff848A94)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 160),
                  child: Text(
                    'End Time',
                    style: TextStyle(fontSize: 14, color: Color(0xff848A94)),
                  ),
                ),
              ],
            ),
          ),
          const Timepicker(),
          const Padding(
            padding: EdgeInsets.only(left: 24, top: 40),
            child: Text(
              'Board',
              style: TextStyle(fontSize: 14, color: Color(0xff848A94)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24),
            child: Row(
              children: [
                Boardwidget(title: 'Urgent'),
                Boardwidget(title: 'Running'),
                Boardwidget(title: 'ongoing'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
                child: InkWell(
                    onTap: () {}, child: Image.asset('assets/icons/Save.png'))),
          ),
        ],
      ),
    );
  }
}
