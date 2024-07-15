import 'package:flutter/material.dart';

class Profilescrwidget extends StatelessWidget {
  final String tittle;
  final Widget icon;
  final VoidCallback onTap;
  const Profilescrwidget(
      {super.key,
      required this.tittle,
      required this.icon,
      required this.onTap});

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
                tittle,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 200),
              child: IconButton(
                onPressed: onTap,
                icon: icon,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
