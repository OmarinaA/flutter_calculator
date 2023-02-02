// ignore_for_file: file_names

class OneTariff {
  String title;
  double price;
  String? description;
  bool? isSelected;

  OneTariff(
      {required this.title,
      required this.price,
      this.description,
      this.isSelected});
}

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
