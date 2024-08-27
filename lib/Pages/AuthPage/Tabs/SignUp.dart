import 'package:chatapp/Widgits/longButton.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      // color: Colors.indigoAccent,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              TextField(
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
              LongButton(
                text: "Sign Up",
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
