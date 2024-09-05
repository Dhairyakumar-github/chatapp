import 'package:chatapp/Models/UserModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class DBControllor extends GetxController {
  final db = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;

  RxList<Usermodel> userList = <Usermodel>[].obs;

  Future<void> getUser() async {
    try {
      await db.collection("user").get().then((e) => {
            userList.value =
                e.docs.map((e) => Usermodel.fromJson(e.data())).toList()
          });
    } catch (e) {
      print(e);
    }
  }
}
