import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final String text;

  const MyAppBar({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        ),
      ),
      leading: IconButton(
        icon: const Icon(Icons.menu_outlined),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.account_circle_outlined,
          ),
        )
      ],
      title: const Center(
        child: Text(
          "H . O .  M .  E",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ),
      elevation: 0,
    );
  }
}
