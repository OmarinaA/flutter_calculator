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
  double sum = basicTariff.price;

  @override
  Widget build(BuildContext context) {
    onChanged(OneTariff tariff, bool? value) {
      if (mounted) {
        setState(() {
          if (value == true) {
            tariff.isSelected = true;
            sum += tariff.price;
          } else if (value == false) {
            tariff.isSelected = false;
            sum -= tariff.price;
          }
        });
      }
    }

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).cardColor, width: 60),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(bottom: 10),
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
                price: sum,
                title: 'Общая стоимость',
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
                  '* ### Общий функционал \nЛичный кабинет, Сообщества, Трекер активности, Социальная сеть, Геймификация \n* ### Дизайн \n7 цветов \n* ### Интеграции \n1С, Крафт, Клабис, Юниверс, A&A, МФ Расписание, Запись на уроки, Запись к тренеру, Личный кабинет Настройка платежной системы (3 варианта)\n* ### Рассылки \n* ### Поддержка \nЧат со службой заботы',
              isSelected: basicTariff.isSelected,
            ),
            LisTileExample(
                price: customDesignLogo.price,
                title: customDesignLogo.title,
                description: '',
                isSelected: customDesignLogo.isSelected,
                onChanged: (value) {
                  onChanged(customDesignLogo, value);
                }),
            LisTileExample(
                price: scheduleWidget.price,
                title: scheduleWidget.title,
                description: '',
                isSelected: scheduleWidget.isSelected,
                onChanged: (value) {
                  onChanged(scheduleWidget, value);
                }),
            LisTileExample(
                price: analytics.price,
                title: analytics.title,
                description: '',
                isSelected: analytics.isSelected,
                onChanged: (value) {
                  onChanged(analytics, value);
                }),
            LisTileExample(
                price: uploadOnlineWorkouts.price,
                title: uploadOnlineWorkouts.title,
                description: '',
                isSelected: uploadOnlineWorkouts.isSelected,
                onChanged: (value) {
                  onChanged(uploadOnlineWorkouts, value);
                }),
          ],
        ),
      ),
    );
  }
}
