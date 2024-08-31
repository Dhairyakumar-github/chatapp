import 'package:chatapp/Pages/AuthPage/authPage.dart';
import 'package:chatapp/Pages/ChatPage/ChatPage.dart';
import 'package:chatapp/Pages/EditProfilePage/editProfilePage.dart';
import 'package:chatapp/Pages/HomePage/HomePage.dart';
import 'package:chatapp/Pages/ProfilePage/ProfilePage.dart';
import 'package:get/get.dart';

var routs = [
  GetPage(name: "/home", page: () => HomePage()),
  GetPage(name: "/authpage", page: () => AuthPage()),
  GetPage(
      name: "/chat",
      page: () => ChatPage(),
      transition: Transition.rightToLeft),
  GetPage(
      name: "/profilepage",
      page: () => ProfilePage(),
      transition: Transition.rightToLeft),
  GetPage(
    name: "/editprofile",
    page: () => EditProfilePage(),
  )
];
