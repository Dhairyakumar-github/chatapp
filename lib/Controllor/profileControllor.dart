import 'package:chatapp/Models/UserModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class ProfileControllor extends GetxController {
  final auth = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;
  Rx<Usermodel> currentUser = Usermodel().obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getUserDetails();
  }

  Future<void> getUserDetails() async {
    await db.collection("user").doc(auth.currentUser?.uid).get().then((value) {
      currentUser.value = Usermodel.fromJson(value.data()!);
    });
  }
}
