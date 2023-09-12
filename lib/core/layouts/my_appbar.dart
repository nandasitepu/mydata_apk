import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final String text;

  const MyAppBar({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Container(color: Colors.red),
      ),
    );
  }
}
