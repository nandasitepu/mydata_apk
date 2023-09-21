// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mydata_apk/features/views/homepage.dart';
import 'package:mydata_apk/features/views/hukum/hukum_list.dart';
import 'package:mydata_apk/features/views/bottom_nav/my_login.dart';

void main() {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(MyData());
}

// whenever your initialization is completed, remove the splash screen:
// FlutterNativeSplash.remove();
class MyData extends StatelessWidget {
  const MyData({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyData',
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      routes: {
        '/homepage': (context) => const Homepage(),
        '/loginpage': (context) => const MyLogin(),
        '/hukum': (context) => const HukumListView(),
      },
    );
  }
}
