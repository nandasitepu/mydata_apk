import 'package:flutter/material.dart';

class MyCardMenu extends StatelessWidget {
  final String text;
  final Icon icon;

  const MyCardMenu({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 20,
              spreadRadius: 10,
              blurStyle: BlurStyle.normal,
            ),
          ],
        ),
        child: Column(
          children: [
            icon,
            const SizedBox(height: 5),
            Text(
              text,
              style: const TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
