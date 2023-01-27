import 'package:flutter/material.dart';
import 'package:flutter_calculator/switch.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class LisTileExample extends StatelessWidget {
  const LisTileExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Card(
          child: ListTile(
            leading: SwitchExample(),
            title: Text('Базовый тариф'),
            trailing: Text.rich(TextSpan(text: '1000 ')),
          ),
        ),
        MarkdownBody(
            data:
                '* Базовый тариф \n* Индивидуальный дизайн + ваш логотип \n* Виджет расписания на ваш сайт \n* Аналитика \n* Возможность загружать онлайн-тренировки'),
      ],
    );
  }
}
