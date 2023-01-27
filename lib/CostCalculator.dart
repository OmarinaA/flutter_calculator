import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator/switch.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_calculator/Headings.dart';

class CostCalculator extends StatefulWidget {
  @override
  _CostCalculatorState createState() => _CostCalculatorState();
}

class _CostCalculatorState extends State<CostCalculator> {
  Color _textColor = Colors.black;
  bool status = false;
  bool isSwitchOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Text('Калькулятор стоимости продления'.toUpperCase(),
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.bodyMedium),
          Text(
            'Выберите функции, которые вам необходимы',
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 14.0,
                fontFamily: 'Steppe',
                color: Color.fromARGB(255, 84, 84, 84),
                wordSpacing: 8,
                height: 1.5),
          ),
          LisTileExample(),
        ],
      ),
    );
  }
}
