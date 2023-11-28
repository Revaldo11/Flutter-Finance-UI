import 'package:flutter/material.dart';
import 'package:flutter_finance_app_ui/constant.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: App.backgroundColor,
          padding: const EdgeInsets.all(20.0),
          alignment: Alignment.topCenter,
          height: 250,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          alignment: Alignment.topCenter,
          height: 150,
          decoration: const BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Image.asset(
                  "assets/man.png",
                  width: 40.0,
                  height: 40.0,
                  alignment: Alignment.topLeft,
                ),
              ),
              Image.asset(
                "assets/search.png",
                width: 25.0,
                height: 25.0,
                color: Colors.white,
              ),
              const SizedBox(width: 20.0),
              Image.asset(
                "assets/bell.png",
                width: 25.0,
                height: 25.0,
                color: Colors.white,
              ),
            ],
          ),
        ),
        Positioned(
          top: 80.0,
          left: 0.0,
          right: 0.0,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30.0),
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Available Balance",
                          style: App.subtitle1,
                        ),
                        Text(
                          "\$ 2,510.00",
                          style: App.headline1,
                        ),
                      ],
                    ),
                    Image.asset(
                      "assets/usa.png",
                      width: 30.0,
                      height: 30.0,
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "See More",
                          style: App.subtitle1,
                        ),
                        const SizedBox(width: 5.0),
                        Container(
                          padding: const EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            color: App.accentColor.withOpacity(0.2),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 8,
                            color: App.accentColor,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "US Dollar",
                          style: App.subtitle2.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Icon(
                          Icons.arrow_drop_down,
                          color: App.accentColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
