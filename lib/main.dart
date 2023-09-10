// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mydata_apk/features/pages/my_home.dart';
import 'package:mydata_apk/features/pages/my_login.dart';

void main() {
  runApp(MyData());
}

class MyData extends StatelessWidget {
  const MyData({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyData',
      debugShowCheckedModeBanner: false,
      home: MyLogin(),
      routes: {
        '/homepage': (context) => const MyHome(),
        '/loginpage': (context) => const MyLogin()
      },
    );
  }
}