import 'package:flutter/material.dart';

class cardWidget extends StatelessWidget {
  final String heading;
  final Color containerColor;
  final Color textColor;
  const cardWidget(
      {super.key,
      required this.heading,
      required this.containerColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24, top: 20),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.23,
            width: MediaQuery.of(context).size.width * 0.68,
            decoration: BoxDecoration(
                color: containerColor, borderRadius: BorderRadius.circular(25)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 47, top: 50),
          child: Text(
            heading,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w600, color: textColor),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 47, top: 90),
          child: Text(
            'UI Design Kit',
            style: TextStyle(
                color: Color(0xffA0BAC5),
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 47, top: 145),
          child: Image.asset('assets/images/People.png'),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 150, top: 145),
          child: Text(
            'Progress',
            style: TextStyle(
                fontSize: 12,
                color: Color(0xffA0BAC5),
                fontWeight: FontWeight.w500),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 145, left: 229),
          child: Text(
            '50/80',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color(0xffA0BAC5)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 150, top: 170),
          child: Image.asset('assets/images/Progress BAr.png'),
        ),
      ],
    );
  }
}
