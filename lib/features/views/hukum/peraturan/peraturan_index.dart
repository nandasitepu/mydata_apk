import 'package:flutter/material.dart';

class PeraturanIndex extends StatefulWidget {
  final String name;
  const PeraturanIndex({super.key, required this.name});

  @override
  State<PeraturanIndex> createState() => _PeraturanIndexState();
}

class _PeraturanIndexState extends State<PeraturanIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.name),
        ),
      ),
      body: const Text("data"),
      // drawer: const MyDrawer(),
    );
  }
}
