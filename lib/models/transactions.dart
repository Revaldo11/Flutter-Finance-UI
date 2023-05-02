import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_finance_app_ui/constant.dart';

class Transactions {
  final String title;
  final String amount;
  final String date;
  final IconData iconData;
  final Color color;

  Transactions({
    required this.title,
    required this.amount,
    required this.date,
    required this.iconData,
    required this.color,
  });
}

List<Transactions> transactions() {
  return [
    Transactions(
      title: "Foods",
      amount: "\$95",
      date: "11 April 2023",
      iconData: Icons.fastfood_rounded,
      color: App.orangeColor,
    ),
    Transactions(
      title: "Medicine",
      amount: "\$100",
      date: "11 April 2023",
      iconData: Icons.medical_information_rounded,
      color: App.greenColor,
    ),
    Transactions(
      title: "Chlothes",
      amount: "\$50",
      date: "11 April 2023",
      iconData: Icons.shop,
      color: App.accentColor,
    ),
    Transactions(
      title: "House",
      amount: "\$450",
      date: "11 April 2023",
      iconData: Icons.house_rounded,
      color: randomColor(),
    ),
    Transactions(
      title: "Car Rental",
      amount: "\$450",
      date: "11 April 2023",
      iconData: Icons.car_rental_rounded,
      color: randomColor(),
    ),
  ];
}

Color randomColor() {
  return Color(Random().nextInt(0xffffffff)).withAlpha(0xff);
}
