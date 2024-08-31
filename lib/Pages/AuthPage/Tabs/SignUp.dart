import 'package:chatapp/Controllor/AuthControllor.dart';
import 'package:chatapp/Widgits/longButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
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
                controller: nameController,
                textAlignVertical: TextAlignVertical(y: 0.1),
                decoration: InputDecoration(
                  hintText: "Name",
                  prefixIcon: Icon(Icons.email_rounded),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: emailController,
                textAlignVertical: TextAlignVertical(y: 0.1),
                decoration: InputDecoration(
                  hintText: "Email",
                  prefixIcon: Icon(Icons.email_rounded),
                ),
              ),
              SizedBox(
                height: 5,
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
                    ? const CircularProgressIndicator()
                    : GestureDetector(
                        onTap: () {
                          authcontrollor.signUp(
                              emailController.text, passwordController.text, nameController.text);
                        },
                        child: const LongButton(
                          text: "Sign Up",
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
