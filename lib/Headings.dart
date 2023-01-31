import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator/CalculatorContent.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class LisTileExample extends StatelessWidget {
  final String title;
  final double price;
  final String? description;
  final bool? isSelected;
  final ValueChanged<bool>? onChanged;
  LisTileExample({
    super.key,
    required this.title,
    required this.price,
    this.description,
    this.isSelected,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: isSelected == null
              ? null
              : CupertinoSwitch(
                  // This bool value toggles the switch.
                  value: isSelected ?? false,
                  activeColor: Color(0xff1E6FFE),
                  onChanged: onChanged),
          title: Text(title),
          trailing: Text.rich(TextSpan(
              text: price.toStringAsFixed(0),
              children: [
                WidgetSpan(child: Icon(Icons.currency_ruble_rounded))
              ])),
        ),
        if (description != null) MarkdownBody(data: description ?? ''),
      ],
    );
  }
}
