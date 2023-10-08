// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mydata_apk/core/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await sharedPrefs.init();

  runApp(MyData());
}

// whenever your initialization is completed, remove the splash screen:
// FlutterNativeSplash.remove();
class MyData extends StatelessWidget {
  const MyData({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}

// class SharedPrefs {
//   static SharedPreferences? _sharedPrefs;
//   init() async {
//     _sharedPrefs = await SharedPreferences.getInstance();
//   }
// }

// final sharedPrefs = SharedPrefs();
