// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mydata_apk/core/routes.dart';

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
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
