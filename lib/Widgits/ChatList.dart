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
            imageUrl: "assets/images/logo.png",
            lastChat: "how are you doing this in a chat list ",
            lastTime: "10:12Pm",
            name: "Dhairya Kumar",
          ),
        ),
      ],
    );
  }
}
