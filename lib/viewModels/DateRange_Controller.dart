import 'package:get/get.dart';

class DateRangeController extends GetxController {
  Rx<DateTime?> startDate = Rx<DateTime?>(null);
  Rx<DateTime?> endDate = Rx<DateTime?>(null);

  void setDateRange(DateTime? start, DateTime? end) {
    startDate.value = start;
    endDate.value = end;
  }

  void clearDateRange() {
    startDate.value = null;
    endDate.value = null;
  }
}
