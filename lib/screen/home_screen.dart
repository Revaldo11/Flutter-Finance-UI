import 'package:flutter/material.dart';
import 'package:flutter_finance_app_ui/components/header.dart';
import 'package:flutter_finance_app_ui/constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: App.backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: App.accentColor,
        unselectedItemColor: App.disabledColor,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.pie_chart), label: "Report"),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "Stock"),
          BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: "Card"),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              Header()
              // contactSection()
            ],
          ),
        ),
      ),
    );
  }
}
