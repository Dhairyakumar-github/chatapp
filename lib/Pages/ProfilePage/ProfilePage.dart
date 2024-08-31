import 'package:chatapp/Controllor/AuthControllor.dart';
import 'package:chatapp/Controllor/profileControllor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});
  Authcontrollor authcontrollor = Get.put(Authcontrollor());
  ProfileControllor profileControllor = Get.put(ProfileControllor());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        actions: [
          GestureDetector(
            onTap: () {
              Get.toNamed("/editprofile");
            },
            child: Icon(Icons.edit),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onPrimary,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "assets/images/logo.png",
                    width: 60,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Obx(
                        () => Text(
                          overflow: TextOverflow.ellipsis,
                          profileControllor.currentUser.value.name.toString(),
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Obx(
                        () => Text(
                          profileControllor.currentUser.value.email.toString(),
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onPrimary,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.call,
                        // color: Colors.green,
                        size: 19,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text("Calls",
                          style: Theme.of(context).textTheme.bodyMedium
                          // ?.copyWith(color: Colors.green),
                          )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onPrimary,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.video_camera_back,
                        // color: Colors.green,
                        size: 19,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text("Video",
                          style: Theme.of(context).textTheme.bodyMedium
                          // ?.copyWith(color: Colors.green),
                          )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onPrimary,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.chat_bubble_outlined,
                        // color: Colors.green,
                        size: 19,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text("Chats",
                          style: Theme.of(context).textTheme.bodyMedium
                          // ?.copyWith(color: Colors.green),
                          )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          ElevatedButton(
              onPressed: () {
                authcontrollor.logout();
              },
              child: Text("Logout"))
        ],
      ),
    );
  }
}
