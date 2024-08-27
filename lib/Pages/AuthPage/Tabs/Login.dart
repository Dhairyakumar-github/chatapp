import 'package:chatapp/Pages/HomePage/HomePage.dart';
import 'package:chatapp/Widgits/longButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      // color: Colors.indigoAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Column(
            children: [
              TextField(
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
              GestureDetector(
                onTap: () => Get.offAllNamed("/home"),
                child: const LongButton(
                  text: "Login",
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
