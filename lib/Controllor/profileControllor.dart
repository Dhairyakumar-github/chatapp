import 'dart:io';

import 'package:chatapp/Models/UserModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

class ProfileControllor extends GetxController {
  final auth = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;
  final store = FirebaseStorage.instance;

  RxBool isloading = false.obs;
  Rx<Usermodel> currentUser = Usermodel().obs;
  @override
  void onInit() {
    // print("dmsmodsco dsomcsmocm");
    // TODO: implement onInit
    super.onInit();
    getUserDetails();
  }

  Future<void> getUserDetails() async {
    try {
      await db
          .collection("user")
          .doc(auth.currentUser?.uid)
          .get()
          .then((value) {
        currentUser.value = Usermodel.fromJson(value.data()!);
      });
    } catch (e) {}
  }

  Future<void> uploadUserProfile(
    String imageurl,
    String name,
    String about,
    String number,
  ) async {
    isloading.value = true;
    try {
      final imageLink = await uploadImageToFirebase(imageurl);

      final updatedUser = Usermodel(
          id: auth.currentUser!.uid,
          email: auth.currentUser!.email,
          name: name,
          about: about,
          phoneNumber: number,
          profileImage:
              imageurl == "" ? currentUser.value.profileImage : imageLink);
      await db
          .collection("user")
          .doc(auth.currentUser!.uid)
          .update(updatedUser.toJson());
      await getUserDetails();
    } catch (e) {
      print("error eed");
    }
    // print(imageLink);
  }

  Future<String> uploadImageToFirebase(String imagePath) async {
    final path = "files";
    final file = File(imagePath);

    if (imagePath != "") {
      try {
        final ref =
            store.ref().child("ProfilePicture").child(path).putFile(file);
        final uploadTask = await ref.whenComplete(() {});
        final downloadUrl = await uploadTask.ref.getDownloadURL();
        return downloadUrl;
      } catch (e) {
        return "";
      } finally {
        isloading.value = false;
      }
    }
    return "";
  }
}
