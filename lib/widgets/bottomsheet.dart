import 'package:flutter/material.dart';

class Bottomsheet extends StatelessWidget {
  final Widget icon;
  final String tittle;
  final VoidCallback onTap;
  const Bottomsheet(
      {super.key,
      required this.icon,
      required this.tittle,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading: icon,
        title: Text(
          tittle,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
