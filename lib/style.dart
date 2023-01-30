import 'package:flutter/material.dart';

final style=ThemeData(
  // Define the default brightness and colors.
  brightness: Brightness.light,
  primaryColor: Color(0xff1E6FFE),

  // Define the default font family.
  fontFamily: 'Steppe',
  elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom()),
  // Define the default `TextTheme`. Use this to specify the default
  // text styling for headlines, titles, bodies of text, and more.
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
    bodyMedium: TextStyle(
      fontSize: 20.0,
      color: Color.fromARGB(200, 0, 0, 0),
      wordSpacing: 8,
    ),
  ),
);