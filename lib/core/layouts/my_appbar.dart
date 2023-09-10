import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final String text;
  final Icon icon;

  const MyAppBar({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
          onPressed: () {},
          icon: icon,
        )
      ],
      title: Center(
        child: Text(
          text,
        ),
      ),
      elevation: 0,
    );
  }
}
