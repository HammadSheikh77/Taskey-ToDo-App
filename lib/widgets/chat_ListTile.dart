import 'package:flutter/material.dart';

class ChatListtile extends StatelessWidget {
  final String tittle;
  final String subtitle;
  final Widget icon;
  final Image image;
  const ChatListtile(
      {super.key,
      required this.tittle,
      required this.subtitle,
      required this.icon,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: image,
      title: Text(
        tittle,
        style: const TextStyle(fontSize: 14),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(fontSize: 11),
      ),
      trailing: icon,
    );
  }
}
