import 'package:class_assigment/viewModels/DateRange_Controller.dart';
import 'package:custom_date_range_picker/custom_date_range_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Datepicker extends StatefulWidget {
  const Datepicker({super.key});

  @override
  State<Datepicker> createState() => _DatepickerState();
}

class _DatepickerState extends State<Datepicker> {
  final DateRangeController controller = Get.put(DateRangeController());
  DateTime? startDate;
  DateTime? endDate;

  @override
  Widget build(BuildContext context) {
    final isLightTheme = Theme.of(context).brightness == Brightness.light;
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.10,
        width: MediaQuery.of(context).size.width * 0.90,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: const EdgeInsets.only(left: 20),
              child: InkWell(
                onTap: () {
                  showCustomDateRangePicker(
                    context,
                    dismissible: true,
                    minimumDate:
                        DateTime.now().subtract(const Duration(days: 30)),
                    maximumDate: DateTime.now().add(const Duration(days: 30)),
                    endDate: controller.endDate.value,
                    startDate: controller.startDate.value,
                    backgroundColor: isLightTheme ? Colors.white : Colors.black,
                    primaryColor: const Color(0xff756EF3),
                    onApplyClick: (start, end) {
                      controller.setDateRange(start, end);
                    },
                    onCancelClick: () {
                      controller.clearDateRange();
                    },
                  );
                },
                child: Obx(() {
                  return Text(
                    controller.startDate.value != null &&
                            controller.endDate.value != null
                        ? '${DateFormat("dd, MMM").format(controller.startDate.value!)} / ${DateFormat("dd, MMM").format(controller.endDate.value!)}'
                        : 'November 01, 2021',
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  );
                }),
              )),
        ]),
      ),
    );
  }
}
