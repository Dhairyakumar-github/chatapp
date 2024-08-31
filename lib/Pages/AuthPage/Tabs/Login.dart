import 'package:chatapp/Controllor/AuthControllor.dart';
import 'package:chatapp/Pages/HomePage/HomePage.dart';
import 'package:chatapp/Widgits/longButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    Authcontrollor authcontrollor = Get.put(Authcontrollor());
    return Container(
      padding: const EdgeInsets.all(8.0),
      // color: Colors.indigoAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              TextField(
                controller: emailController,
                textAlignVertical: TextAlignVertical(y: 0.1),
                decoration: InputDecoration(
                  hintText: "Email",
                  prefixIcon: Icon(Icons.email_rounded),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: passwordController,
                textAlignVertical: TextAlignVertical(y: 0.1),
                decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: Icon(Icons.password_outlined),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Obx(
                () => authcontrollor.isLoading.value
                    ? CircularProgressIndicator()
                    : GestureDetector(
                        onTap: () {
                          authcontrollor.login(
                              emailController.text, passwordController.text);
                          // Get.offAllNamed("/home");
                        },
                        child: const LongButton(
                          text: "Login",
                        ),
                      ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
