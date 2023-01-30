import 'package:flutter/material.dart';
import 'package:flutter_calculator/switch.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class LisTileExample extends StatelessWidget {
  String title;
  double price;
  String? description;
  LisTileExample({
    super.key,
    required this.title,
    required this.price,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          child: ListTile(
            leading: SwitchExample(),
            title: Text(title),
            trailing: Text.rich(TextSpan(
                text: price.toStringAsFixed(0),
                children: [
                  WidgetSpan(child: Icon(Icons.currency_ruble_rounded))
                ])),
          ),
        ),
        if (description != null) MarkdownBody(data: description ?? ''),
      ],
    );
  }
}
