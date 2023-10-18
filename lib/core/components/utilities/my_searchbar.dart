import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  final dynamic controller;
  final String hintText;
  final bool obscureText;
  final Icon prefixIcon;
  // final Icon suffixIcon;

  const MySearchBar({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.prefixIcon,
    // required this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: hintText,
        border: const OutlineInputBorder(
          borderSide: BorderSide(),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
        fillColor: Colors.grey.shade200,
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey[500]),
        prefixIcon: prefixIcon,
        //  suffixIcon: suffixIcon,
      ),
    );
  }
}
