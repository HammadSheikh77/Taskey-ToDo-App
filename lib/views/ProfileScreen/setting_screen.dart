import 'package:class_assigment/viewModels/Theme_Controller.dart';
import 'package:class_assigment/widgets/settingwidget.dart';
import 'package:class_assigment/widgets/switch_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingScreen extends StatelessWidget {
  final ThemeController controller = Get.put(ThemeController());
  SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Padding(
              padding: EdgeInsets.only(left: 14),
              child: Icon(Icons.arrow_back_ios_new_outlined),
            )),
        title: const Padding(
          padding: EdgeInsets.only(left: 100),
          child: Text(
            'Settings',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        children: [
          Settingwidget(
              title: 'Permission',
              icon: const Icon(
                Icons.toggle_on,
                size: 40,
              ),
              onTap: () {}),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Settingwidget(
              title: 'Push Notification',
              icon: const Icon(
                Icons.toggle_off,
                size: 40,
              ),
              onTap: () {}),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Obx(
            () => SwitchButton(
                title: 'Dark Mode',
                value: controller.themeMode.value == ThemeMode.dark,
                onChanged: (Value) {
                  controller
                      .changeTheme(Value ? ThemeMode.dark : ThemeMode.light);
                }),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Settingwidget(
              title: 'Security',
              icon: const Icon(
                Icons.arrow_forward_ios_outlined,
              ),
              onTap: () {}),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Settingwidget(
              title: 'Help',
              icon: const Icon(
                Icons.arrow_forward_ios_outlined,
              ),
              onTap: () {}),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Settingwidget(
              title: 'Langauge',
              icon: const Icon(
                Icons.arrow_forward_ios_outlined,
              ),
              onTap: () {}),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Settingwidget(
              title: 'About Application',
              icon: const Icon(
                Icons.arrow_forward_ios_outlined,
              ),
              onTap: () {}),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
        ],
      ),
    );
  }
}
