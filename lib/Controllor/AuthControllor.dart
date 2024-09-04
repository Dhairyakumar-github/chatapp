import 'package:chatapp/Models/UserModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class Authcontrollor extends GetxController {
  final auth = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;
  RxBool isLoading = false.obs;
// for Login
  Future<void> login(String email, String password) async {
    isLoading.value = true;
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      Get.toNamed("/home");
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        print("User not found");
      }
      print(e.code);
    } catch (e) {
      print(e);
    } finally {
      isLoading.value = false;
    }
  }

  // for SignUp
  Future<void> signUp(String email, String password, String name) async {
    isLoading.value = true;
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      await saveUserInfo(email: email, name: name);
      Get.toNamed("/home");
      // print("Account Created successfully 😀😀");
    } on FirebaseAuthException catch (e) {
      if (e.code == "weak-password") {
        print("weak-password");
      } else if (e.code == "email-already-in-use") {
        print("Email-already-in-use");
      }
      print(e.code);
    } catch (e) {
      print(e);
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> logout() async {
    try {
      await auth.signOut();
      Get.offAllNamed("/authpage");
    } catch (e) {}
  }

  Future<void> saveUserInfo(
      {required String email, required String name}) async {
    try {
      final data =
          Usermodel(email: email, name: name, id: auth.currentUser?.uid);
      await db.collection("user").doc(auth.currentUser?.uid).set(data.toJson());
    } catch (e) {
      print("Error saving");
    }
  }
}
