import 'package:flutter/material.dart';
import 'package:flutter_finance_app_ui/constant.dart';
import 'package:flutter_finance_app_ui/models/constacs.dart';

class ContacSection extends StatelessWidget {
  const ContacSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20.0),
      height: 70.0,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              color: Colors.deepPurple,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              "assets/search.png",
              color: Colors.white,
              width: 30.0,
              height: 30.0,
            ),
          ),
          const SizedBox(width: 15.0),
          Container(
            height: 40,
            width: 2,
            color: App.secondaryTextColor,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: constacs().length,
              itemBuilder: ((context, index) {
                return Container(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Column(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          constacs()[index].imageLink,
                          fit: BoxFit.cover,
                          width: 40.0,
                          height: 40.0,
                        ),
                      ),
                      const SizedBox(height: 5.0),
                      Text(constacs()[index].name, style: App.bodyText1),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
