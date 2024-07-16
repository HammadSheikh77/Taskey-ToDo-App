import 'package:class_assigment/viewModels/TimeRange_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Timepicker extends StatelessWidget {
  const Timepicker({super.key});

  @override
  Widget build(BuildContext context) {
    final TimeController controller = Get.put(TimeController());
    return Padding(
      padding: const EdgeInsets.only(left: 40, top: 10),
      child: Row(
        children: [
          InkWell(
            onTap: () async {
              TimeOfDay? picked = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              );
              if (picked != null) {
                controller.setTime(picked);
              }
            },
            child: Obx(() {
              return Text(
                controller.selectedTime.value != null
                    ? controller.selectedTime.value!.format(context)
                    : '0:00 am',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              );
            }),
          ),
          const SizedBox(width: 20),
          InkWell(
            onTap: () async {
              TimeOfDay? picked = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              );
              if (picked != null) {
                controller.setTime(picked);
              }
            },
            child: Obx(() {
              return Padding(
                padding: const EdgeInsets.only(left: 150),
                child: Text(
                  controller.selectedTime.value != null
                      ? controller.selectedTime.value!.format(context)
                      : '0:00 pm',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
