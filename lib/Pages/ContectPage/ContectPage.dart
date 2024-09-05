import 'package:chatapp/Controllor/ContectControllor.dart';
import 'package:chatapp/Pages/ContectPage/Widgits/ContectSearch.dart';
import 'package:chatapp/Pages/ContectPage/Widgits/NewContectTile.dart';
import 'package:chatapp/Widgits/ChatTils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContectPage extends StatelessWidget {
  const ContectPage({super.key});
  @override
  Widget build(BuildContext context) {
    RxBool isSearchEnable = false.obs;
    ContectControllor contectControllor = Get.put(ContectControllor());
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Contect"),
        actions: [
          Obx(
            () => IconButton(
              onPressed: () {
                isSearchEnable.value = !isSearchEnable.value;
                print(isSearchEnable.value);
              },
              icon:
                  isSearchEnable.value ? Icon(Icons.close) : Icon(Icons.search),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Obx(
          () => ListView(
            children: [
              if (isSearchEnable.value) ContectSearch(),
              SizedBox(
                height: 10,
              ),
              NewContectTile(
                btnName: "New Contect",
                icon: Icons.person,
                ontap: () {},
              ),
              SizedBox(
                height: 10,
              ),
              NewContectTile(
                btnName: "New Group",
                icon: Icons.person,
                ontap: () {},
              ),
              SizedBox(
                height: 10,
              ),
              Text("Contects"),
              SizedBox(
                height: 10,
              ),
              Column(
                children: contectControllor.userList
                    .map(
                      (e) => GestureDetector(
                        onTap: () {
                          Get.toNamed("/chat");
                        },
                        child: ChatTiles(
                          imageUrl: e.profileImage ?? "assets/images/logo.png",
                          lastChat: "how are you doing this in a chat list ",
                          lastTime: "10:12Pm",
                          name: e.name ?? "User",
                        ),
                      ),
                    )
                    .toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
