import 'dart:io';

import 'package:chatapp/Controllor/ImagePickerControllor.dart';
import 'package:chatapp/Controllor/profileControllor.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    ImagePickerControllor imagePickerControllor =
        Get.put(ImagePickerControllor());
    ProfileControllor profileControllor = Get.put(ProfileControllor());
    TextEditingController name =
        TextEditingController(text: profileControllor.currentUser.value.name);
    TextEditingController email =
        TextEditingController(text: profileControllor.currentUser.value.email);
    TextEditingController phoneNumber = TextEditingController(
        text: profileControllor.currentUser.value.phoneNumber);
    TextEditingController about = TextEditingController(
        text:
            "John Deo and John Deo from John Deo and John Deo from John Deo and John Deo from John Deo and John Deo from John Deo and John Deo from John Deo");
    RxBool isEdit = false.obs;
    RxString imagePath = "".obs;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimary,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Obx(
                  () => isEdit.value
                      ? GestureDetector(
                          onTap: () async {
                            imagePath.value =
                                await imagePickerControllor.pickImage();

                            // print(imagePath.value);
                          },
                          child: CircleAvatar(
                            radius: 55,
                            child: imagePath.value == ""
                                ? Icon(Icons.add)
                                : SizedBox(
                                    width: 110,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(55),
                                      child: Image.file(
                                        File(
                                          imagePath.toString(),
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {},
                          child: const CircleAvatar(
                            radius: 55,
                            child: Icon(Icons.image),
                          ),
                        ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Obx(
                  () => TextField(
                    controller: name,
                    decoration: InputDecoration(
                      enabled: isEdit.value,
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      filled: false,
                      labelText: "Name",
                      labelStyle: const TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: email,
                  decoration: const InputDecoration(
                    enabled: false,
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    filled: false,
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Obx(
                  () => TextField(
                    controller: phoneNumber,
                    decoration: InputDecoration(
                      enabled: isEdit.value,
                      prefixIcon: const Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      filled: false,
                      labelText: "Phone",
                      labelStyle: const TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Obx(
                  () => TextField(
                    maxLines: 3,
                    controller: about,
                    decoration: InputDecoration(
                      enabled: isEdit.value,
                      prefixIcon: const Icon(
                        Icons.info,
                        color: Colors.white,
                      ),
                      filled: false,
                      labelText: "About",
                      labelStyle: const TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Obx(
                  () => isEdit.value
                      ? SizedBox(
                          width: 200,
                          height: 45,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                  Theme.of(context).colorScheme.primary),
                              shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            onPressed: () async {
                              isEdit.value = false;
                              await profileControllor.uploadUserProfile(
                                  imagePath.value,
                                  name.text,
                                  about.text,
                                  phoneNumber.text);
                            },
                            child: const Text("Save"),
                          ),
                        )
                      : SizedBox(
                          width: 200,
                          height: 45,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                  Theme.of(context).colorScheme.primary),
                              shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            onPressed: () {
                              isEdit.value = true;
                            },
                            child: const Text("Edit"),
                          ),
                        ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
