import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupscreenController extends GetxController {
  final nameController = Rx(TextEditingController()).obs;
  final emailController = Rx(TextEditingController())().obs;
  final passwordController = TextEditingController().obs;
}
