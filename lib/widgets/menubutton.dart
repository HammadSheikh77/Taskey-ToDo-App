import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String title;
  final IconData iconButton;
  final Color iconColor;
  final double iconSize;

  const MenuButton({
    super.key,
    required this.title,
    required this.iconButton,
    required this.iconColor,
    required this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.10,
        width: MediaQuery.of(context).size.width * 0.90,
        decoration: BoxDecoration(
          color: const Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Icon(
                iconButton,
                size: iconSize,
                color: iconColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
