import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class InprogressWidget extends StatelessWidget {
  final String heading;
  final String tittle;
  final double count;
  final String time;
  final double radius;
  final String progressText;
  const InprogressWidget(
      {super.key,
      required this.heading,
      required this.tittle,
      required this.count,
      required this.time,
      required this.radius,
      required this.progressText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.10,
          width: MediaQuery.of(context).size.width * 0.90,
          decoration: BoxDecoration(
              color: const Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 29, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      heading,
                      style: const TextStyle(
                          fontSize: 14,
                          color: Color(0xff848A94),
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      tittle,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      time,
                      style: const TextStyle(
                          fontSize: 14,
                          color: Color(0xff848A94),
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CircularPercentIndicator(
                  radius: radius,
                  lineWidth: 5,
                  percent: count,
                  center: Text(
                    progressText,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  progressColor: const Color(0xff756EF3),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
