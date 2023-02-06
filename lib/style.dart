import 'package:flutter/material.dart';

final style=ThemeData(
  // Define the default brightness and colors.
  brightness: Brightness.light,
  primaryColor: Color(0xff1E6FFE),
  cardColor: Color(0xffFFFFFF),

  // Define the default font family.
  fontFamily: 'Steppe',
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(backgroundColor: Color(0xff1E6FFE),
    minimumSize: const Size.fromHeight(50)) 
  ),
  // Define the default `TextTheme`. Use this to specify the default
  // text styling for headlines, titles, bodies of text, and more.
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: 20.0,
      color: Color(0xff1E6FFE),
      wordSpacing: 8,
    ),
    titleMedium: TextStyle(
      fontSize: 16.0,
      color: Color.fromARGB(255, 84, 84, 84),
      wordSpacing: 8,
    ),
    bodyLarge: TextStyle(
      fontSize: 14.0,
      color: Color.fromARGB(255, 84, 84, 84),
      wordSpacing: 8,
    ),
    bodyMedium: TextStyle(
      fontSize: 20.0,
      color: Color(0xff1E6FFE),
      wordSpacing: 8,
    ),
  ),
);