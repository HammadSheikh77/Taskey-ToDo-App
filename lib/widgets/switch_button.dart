import 'package:flutter/material.dart';

class SwitchButton extends StatelessWidget {
  final String title;
  final ValueChanged<bool> onChanged;
  final bool value;
  const SwitchButton(
      {super.key,
      required this.title,
      required this.value,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.10,
        width: MediaQuery.of(context).size.width * 0.90,
        decoration: BoxDecoration(
            // color: const Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,),
              ),
            ),
            Switch(
              value: value,
              onChanged: onChanged,
            ),
          ],
        ),
      ),
    );
  }
}
