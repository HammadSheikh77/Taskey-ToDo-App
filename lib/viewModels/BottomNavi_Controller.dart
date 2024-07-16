import 'package:class_assigment/views/AddScreen/addScreen.dart';
import 'package:class_assigment/views/ChatScreen/chatScreen.dart';
import 'package:class_assigment/views/HomeScreen/home_screen.dart';
import 'package:class_assigment/views/ProfileScreen/profileScreen.dart';
import 'package:class_assigment/views/ProjectScreen/projectScreen.dart';
import 'package:get/get.dart';

class BottomnaviController extends GetxController {
  var selectedIndex = 0.obs;
  List pages = [
    const HomeScreen(),
    const Projectscreen(),
    const AddTask(),
    const Chatscreen(),
    const Profilescreen(),
  ];
  void onTapNav(int index) {
    selectedIndex.value = index;
  }
}
