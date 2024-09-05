import 'package:chatapp/Widgits/ChatTils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Chatlist extends StatelessWidget {
  const Chatlist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        GestureDetector(
          onTap: () {
            Get.toNamed("/chat");
          },
          child: ChatTiles(
            imageUrl:
                "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&w=600",
            lastChat: "how are you doing this in a chat list ",
            lastTime: "10:12Pm",
            name: "Dhairya Kumar",
          ),
        ),
      ],
    );
  }
}
