// import 'package:class_assigment/widgets/menubutton.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class SettingScreen extends StatefulWidget {
//   const SettingScreen({super.key});

//   @override
//   State<SettingScreen> createState() => _SettingScreenState();
// }

// class _SettingScreenState extends State<SettingScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Padding(
//           padding: const EdgeInsets.only(left: 24),
//           child: IconButton(
//               onPressed: () {
//                 Get.back();
//               },
//               icon: const Icon(Icons.arrow_back_ios)),
//         ),
//         title: const Padding(
//           padding: const EdgeInsets.only(left: 90),
//           child: Text(
//             'Settings',
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           ),
//         ),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           MenuButton(
//               title: 'Permission',
//               iconButton: Icons.toggle_on,
//               iconColor: Color(0xff756EF3),
//               iconSize: 50),
//           MenuButton(
//               title: 'Push Notification',
//               iconButton: Icons.toggle_off,
//               iconColor: Color(0xffD7D7D7),
//               iconSize: 50),
//           MenuButton(
//               title: 'Dark Mood',
//               iconButton: Icons.toggle_off,
//               iconColor: Color(0xffD7D7D7),
//               iconSize: 50),
//           MenuButton(
//               title: 'Security',
//               iconButton: Icons.arrow_forward_ios,
//               iconColor: Color(0xff002055),
//               iconSize: 20),
//           MenuButton(
//               title: 'Help',
//               iconButton: Icons.arrow_forward_ios,
//               iconColor: Color(0xff002055),
//               iconSize: 20),
//           MenuButton(
//               title: 'Langauge',
//               iconButton: Icons.arrow_forward_ios,
//               iconColor: Color(0xff002055),
//               iconSize: 20),
//           MenuButton(
//               title: 'About Application',
//               iconButton: Icons.arrow_forward_ios,
//               iconColor: Color(0xff002055),
//               iconSize: 20),
//         ],
//       ),
//     );
//   }
// }
