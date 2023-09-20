import 'package:flutter/material.dart';

class MyCardMenu extends StatelessWidget {
  final String menuTitle;
  final String imageName;
  final String link;
  final Color menuColor;

  const MyCardMenu({
    super.key,
    required this.menuTitle,
    required this.imageName,
    required this.menuColor,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, link);
      },
      child: Column(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(10),
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
      ),
    );
  }
}
