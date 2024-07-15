import 'package:class_assigment/widgets/chat_ListTile.dart';
import 'package:flutter/material.dart';

class Chatscreen extends StatelessWidget {
  const Chatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 165, top: 60),
                child: Text(
                  'Chats',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 135, top: 60),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add_circle_outline)),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
            child: TextFormField(
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(80))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(80))),
                hintText: 'Search',
                prefixIcon: Icon(Icons.search_outlined),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ChatListtile(
              tittle: 'Jenny Alxinder',
              subtitle: 'Active now',
              icon: const Icon(Icons.photo_camera_outlined),
              image: Image.asset('assets/images/Chat profile 1.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ChatListtile(
              tittle: 'Team Align',
              subtitle: 'Active 1h ago',
              icon: const Icon(Icons.photo_camera_outlined),
              image: Image.asset('assets/images/Group 1000000815.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ChatListtile(
              tittle: 'Alex Avishek',
              subtitle: 'Active 1h ago',
              icon: const Icon(Icons.photo_camera_outlined),
              image: Image.asset('assets/images/Chat profile 2.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ChatListtile(
              tittle: 'Jafor Dicrose',
              subtitle: 'Active 1h ago',
              icon: const Icon(Icons.photo_camera_outlined),
              image: Image.asset('assets/images/Chat profile 3.png'),
            ),
          )
        ],
      ),
    );
  }
}
