import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class SplashControllor extends GetxController {
  final auth = FirebaseAuth.instance;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    splash();
  }

  Future<void> splash() async {
    Future.delayed(Duration(seconds: 5), () {
      if (auth.currentUser == null) {
        Get.offAllNamed("/authpage");
      } else {
        Get.offAllNamed("/home");
        print(auth.currentUser?.displayName);
      }
    });
  }
}
