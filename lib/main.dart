import 'package:flutter/material.dart';
import 'package:flutter_calculator/style.dart';
import 'CostCalculator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: style,
      debugShowCheckedModeBanner: false,
      home: CostCalculator(),
    );
  }
}
