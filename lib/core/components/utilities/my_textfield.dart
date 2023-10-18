import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final dynamic controller;
  final String hintText;
  final bool obscureText;
  final Icon prefixIcon;
  // final Icon suffixIcon;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.prefixIcon,
    // required this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelStyle: const TextStyle(
            color: Colors.black,
            backgroundColor: Colors.white,
            letterSpacing: 5,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          labelText: hintText,
          border: const OutlineInputBorder(
            borderSide: BorderSide(),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          focusColor: Colors.blue,
          hoverColor: Colors.grey,
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[500]),
          prefixIcon: prefixIcon,
          //  suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
