import 'package:chatapp/Pages/ChatPage/Widgits/chatBubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        child: Row(
          children: [SvgPicture.asset("assets/svgs/mic.svg")],
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 60,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call),
          ),
        ],
        leadingWidth: 35,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios_new_rounded)),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                "assets/images/logo.png",
                width: 50,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dhairya Kumar",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  "Online",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: const Color.fromARGB(255, 58, 58, 58)),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView(children: [
          Column(
            children: [
              ChatBubble(
                  message: "eddwiedhidik nwndo wkn jdwo kwdiniwnd",
                  imageUrl: "",
                  time: "10:20 PM",
                  status: "status",
                  iscoming: true),
              ChatBubble(
                message: "eddwiedhidik nwndo wkn jdwo kwdiniwnd",
                imageUrl: "",
                time: "10:20 PM",
                status: "status",
                iscoming: false,
              ),
              ChatBubble(
                message: "",
                imageUrl: "assets/images/dashboardui.jpg",
                time: "10:20 PM",
                status: "status",
                iscoming: false,
              ),
              ChatBubble(
                message: "eddwiedhidik nwndo wkn jdwo kwdiniwnd",
                imageUrl: "",
                time: "10:20 PM",
                status: "status",
                iscoming: true,
              ),
              ChatBubble(
                message: "",
                imageUrl: "assets/images/dashboardui.jpg",
                time: "10:20 PM",
                status: "status",
                iscoming: true,
              ),
            ],
          )
        ]),
      ),
    );
  }
}
