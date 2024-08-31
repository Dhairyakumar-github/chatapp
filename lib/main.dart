import 'package:chatapp/Config/theme.dart';
import 'package:chatapp/Controllor/spleshControllor.dart';
import 'package:chatapp/Pages/AuthPage/authPage.dart';
import 'package:chatapp/Pages/HomePage/HomePage.dart';
import 'package:chatapp/Pages/splashScreen.dart';
import 'package:chatapp/Pages/welcomepage.dart';
import 'package:chatapp/Routing/routs.dart';
import 'package:chatapp/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
  SplashControllor controllor = Get.put(SplashControllor());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        getPages: routs,
        title: 'Flutter Demo',
        theme: darkTheme,
        darkTheme: darkTheme,
        home: SpleshScreen()
        // AuthPage()
        // HomePage()

        //  WelcomePage(),
        );
  }
}
