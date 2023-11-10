// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mydata_apk/core/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyData());
}

class MyData extends StatelessWidget {
  const MyData({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
