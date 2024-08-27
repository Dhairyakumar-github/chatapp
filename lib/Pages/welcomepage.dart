import 'package:chatapp/Config/text.dart';
import 'package:chatapp/Pages/AuthPage/authPage.dart';
import 'package:chatapp/Widgits/longButton.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/svgs/vchat-logo'.svg",
                    // height: 100,
                    width: 50,
                  ),
                  SvgPicture.asset(
                    "assets/svgs/Chat.svg",
                    color: Color.fromARGB(255, 93, 173, 239),
                    height: 150,
                    // width: 150,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Text(
                AppText.welcomeText,
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child:
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Get.offAllNamed("/authpage");
                  //   },
                  //   child: Text("Next"),
                  // ),
                  GestureDetector(
                onTap: () => Get.offAllNamed("/authpage"),
                child: LongButton(
                  text: "Next",
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
