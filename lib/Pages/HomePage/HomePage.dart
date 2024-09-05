import 'package:chatapp/Controllor/profileControllor.dart';
import 'package:chatapp/Widgits/ChatList.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  ProfileControllor profileControllor = Get.put(ProfileControllor());
  late TabController tcontrollor;
  // ProfileControllor profileControllor = Get.put(ProfileControllor());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tcontrollor = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 30,
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        title: const Text("WeChat"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              Get.toNamed("/profilepage");
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
        bottom: TabBar(
          labelStyle: const TextStyle(fontSize: 20),
          dividerHeight: 0,
          controller: tcontrollor,
          tabs: [
            Tab(
              text: "Chats",
            ),
            Tab(
              text: "Groups",
            ),
            Tab(
              text: "Calls",
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed("/contectpage");
        },
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TabBarView(
              controller: tcontrollor,
              children: [
                Chatlist(),

                Text("WeChat"),
                Text("WeChat"),
                // Text("WeChat"),
                // Text("WeChat"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
