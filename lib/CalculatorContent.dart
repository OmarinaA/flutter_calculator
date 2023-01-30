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
