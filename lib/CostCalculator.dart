import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_calculator/Headings.dart';
import 'package:flutter_calculator/CalculatorContent.dart';

class CostCalculator extends StatefulWidget {
  @override
  _CostCalculatorState createState() => _CostCalculatorState();
}

class _CostCalculatorState extends State<CostCalculator> {
  final basicTariff = OneTariff(
    title: 'Базовый тариф',
    price: 5000,
    isSelected: true,
  );

  final customDesignLogo = OneTariff(
    title: 'Индивидуальный дизайн + ваш логотип ',
    price: 3000,
    isSelected: false,
  );
  final scheduleWidget = OneTariff(
    title: 'Виджет расписания на ваш сайт',
    price: 1000,
    isSelected: false,
  );

  final analytics = OneTariff(
    title: 'Аналитика',
    price: 1000,
    isSelected: false,
  );

  final uploadOnlineWorkouts = OneTariff(
    title: 'Возможность загружать онлайн-тренировки',
    price: 1000,
    isSelected: false,
  );

  final total = OneTariff(
    title: 'Общая стоимость',
    price: 1000,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Divider(
              color: Color(0xffD9D9D9),
              thickness: 2,
              indent: 5,
              endIndent: 5,
              height: 1,
            ),
            LisTileExample(
              price: total.price,
              title: total.title,
            ),
            ElevatedButton(
              onPressed: () {
                print('button pressed!');
              },
              child: Text('ОПЛАТИТЬ'),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 60, top: 50),
        children: <Widget>[
          Text('Калькулятор стоимости продления'.toUpperCase(),
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.titleLarge),
          Padding(
            padding: EdgeInsets.only(bottom: 40, top: 20),
            child: Text('Выберите функции, которые вам необходимы',
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.titleMedium),
          ),
          LisTileExample(
            price: basicTariff.price,
            title: basicTariff.title,
            description:
                '* Общий функционал \n* Дизайн \n* Интеграции \n* Рассылки \n* Поддержка',
            isSelected: basicTariff.isSelected,
            onChanged: (value) {},
          ),
          LisTileExample(
            price: customDesignLogo.price,
            title: customDesignLogo.title,
            description: '',
            isSelected: customDesignLogo.isSelected,
            onChanged: (value) {},
          ),
          LisTileExample(
            price: scheduleWidget.price,
            title: scheduleWidget.title,
            description: '',
            isSelected: scheduleWidget.isSelected,
            onChanged: (value) {},
          ),
          LisTileExample(
            price: analytics.price,
            title: analytics.title,
            description: '',
            isSelected: analytics.isSelected,
            onChanged: (value) {},
          ),
          LisTileExample(
            price: uploadOnlineWorkouts.price,
            title: uploadOnlineWorkouts.title,
            description: '',
            isSelected: uploadOnlineWorkouts.isSelected,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
