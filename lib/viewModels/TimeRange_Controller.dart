import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TimeController extends GetxController {
  Rx<TimeOfDay?> selectedTime = Rx<TimeOfDay?>(null);

  void setTime(TimeOfDay? time) {
    selectedTime.value = time;
  }

  void clearTime() {
    selectedTime.value = null;
  }
}
