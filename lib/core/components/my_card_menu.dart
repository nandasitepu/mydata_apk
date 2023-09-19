import 'package:flutter/material.dart';

class MyCardMenu extends StatelessWidget {
  final String menuTitle;
  final String imageName;
  final Color menuColor;

  const MyCardMenu({
    super.key,
    required this.menuTitle,
    required this.imageName,
    required this.menuColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            height: 150,
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: menuColor,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 1,
                  spreadRadius: 1,
                )
              ],
            ),
            child: Image.asset(
              imageName,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Text(menuTitle),
      ],
    );
  }
}
