import 'package:chatapp/Config/colors.dart';
import 'package:flutter/material.dart';

var lightTheme = ThemeData();
var darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    primary: dPrimaryColor,
    onPrimary: dContainerColor,
    surface: dBackgroundColor,
    onSurface: dOnBackgroundColor,
    primaryContainer: dOnContainerColor,
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w600,
        fontFamily: "Baloo Bhai 2",
        height: 1),
    headlineMedium: TextStyle(
      height: 1,
      fontSize: 28,
      fontFamily: "Baloo Bhai 2",
      fontWeight: FontWeight.w500,
    ),
    headlineSmall: TextStyle(
      height: 1,
      fontFamily: "Baloo Bhai 2",
      fontSize: 25,
    ),
    bodyLarge: TextStyle(
      height: 1,
      fontFamily: "Baloo Bhai 2",
      fontSize: 23,
    ),
    bodyMedium: TextStyle(
      height: 1,
      fontFamily: "Baloo Bhai 2",
      fontSize: 20,
    ),
    bodySmall: TextStyle(
      height: 1,
      fontFamily: "Baloo Bhai 2",
      fontSize: 16,
    ),
  ),
  elevatedButtonTheme: const ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor:
          WidgetStatePropertyAll(Color.fromARGB(255, 149, 148, 156)),
      foregroundColor:
          WidgetStatePropertyAll(Color.fromARGB(255, 255, 255, 255)),
      textStyle: WidgetStatePropertyAll(
        TextStyle(fontSize: 24),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: dBackgroundColor,
    filled: true,
    border: UnderlineInputBorder(
        borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10)),
    focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
  ),
);
